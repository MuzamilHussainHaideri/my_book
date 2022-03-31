class BookSerializer < ActiveModel::Serializer
  attributes :id, :title,:author, :description, :image, :price
  belongs_to :user
  has_many :reviews
end
