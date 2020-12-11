class Good < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  validates :amount, presence: true
end
