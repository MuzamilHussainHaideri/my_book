class Api::V1::BooksController < ApplicationController

  def index
    render json: Book.all, root: false
  end

  
  def create
    @book = Book.new(book_params)
    if @book.save
      render json: {notice:"created"}
    else
      render json: {notice:"not creates"}
    end
  end
end

def book_params
  params.require(:book).permit( :name, :description, :author)
end