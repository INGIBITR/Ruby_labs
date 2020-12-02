require 'securerandom.rb'

p SecureRandom.random_number(100)

def random_string(length=10)
    chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
    password = ''
    length.times { password << chars[rand(chars.size)] }
    password
  end