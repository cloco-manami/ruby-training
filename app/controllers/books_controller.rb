class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    books = Book.all
    render json: books
  end

  def create
    puts "ABCD"
  end
end
