Rails.application.routes.draw do
  get '/', to: redirect('/palindrome/input')
  get 'palindrome/input'
  get 'palindrome/view'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
