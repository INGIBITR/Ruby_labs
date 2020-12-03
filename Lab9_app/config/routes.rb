# frozen_string_literal: true

Rails.application.routes.draw do
  root 'lab#index'
  get '/calculate.json', to: 'lab#calculate'
end
