class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  skip_before_action :verify_authenticity_token

  before_action :initialize_session
  before_action :load_cart

  private

  def initialize_session
    session[:cart] ||= [] # empty cart = empty array
  end

  def load_cart
    @cart = Book.find(session[:cart])
  end
end
