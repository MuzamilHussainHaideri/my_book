class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :reviews
  has_many :order_items
end
