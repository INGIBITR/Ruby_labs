require "nokogiri"
require "open-uri"

class ProxyController < ApplicationController
  before_action :parse_params, only: :output
  before_action :prepare_url, only: :output

  def input; end

  def output
    # Делаем запрос и получаем ответ от другого сервера в виде XML-документа.
    api_response = open(@url)
    # Если делать XML -> HTML на сервере.
    if @side == "server"
      @result = xslt_transform(api_response).to_html # Если делать XML -> HTML в браузере.
    elsif @side == "client-with-xslt"
      render xml: insert_browser_xslt(api_response).to_xml
      # Если вообще ничего не делать.
    else
      render xml: api_response
    end
  end

  private

  # Вспомогательные константы (freeze рекомендуется делать, чтобы получить неизменяемую строку).
  # Куда шлем запрос.
  BASE_API_URL = "http://localhost:3000/?format=xml".freeze
  # Откуда берем XSLT для преобразования на стороне сервера
  # (тут нужен обычный путь, Rails.root - путь к каталгу приложения).
  XSLT_SERVER_TRANSFORM = "#{Rails.root}/public/server_transform.xslt".freeze
  # Откуда браузер должен брать XSLT. Это подставится к localhost:3001. Именно так грузятся файлы из public.
  XSLT_BROWSER_TRANSFORM = "/browser_transform.xslt".freeze
  # Разбираем параметры запроса.
  def parse_params
    @num = params[:n]
    @side = params[:side]
  end

  # Создаем url с использованием разобранных параметров запроса
  # (так как prepare_url вызывается после parse_params, @lower и @upper уже доступны).
  def prepare_url
    @url = BASE_API_URL + "&n=#{@num}"
  end

  # Преобразование XSLT на сервере (код Самарева).
  def xslt_transform(data, transform: XSLT_SERVER_TRANSFORM)
    doc = Nokogiri::XML(data)
    xslt = Nokogiri::XSLT(File.read(transform))
    xslt.transform(doc)
  end

  # Чтобы преобразование XSLT на клиенте работало, надо вставить ссылку на XSLT.
  # Делается это с помощью nokogiri через ProcessingInstruction (потому что ссылка # на XSLT называется в XML processing instruction).
  def insert_browser_xslt(data, transform: XSLT_BROWSER_TRANSFORM)
    doc = Nokogiri::XML(data)
    xslt = Nokogiri::XML::ProcessingInstruction.new(doc, m + '"')
    doc
  end
end
