class Api::V1::BooksController < ApplicationController
  before_action :set_book, only: %i[ show update destroy ]
  def index
    @book= Book.all
    render json: @book, root: false
  end

  def show
    render json: @book
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      render json: @book, status: :created, location: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def update
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit( :title, :description, :author, :image, :price, :user_id)
  end

end
