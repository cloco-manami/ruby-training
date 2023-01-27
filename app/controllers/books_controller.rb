class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books
  end

  def create
    # book = Book.new(title: "book2", content: "This is a book2")
    #
    # if book.save
    #   render json: book, status: :created
    #
    # else
    #   render json: book.errors, status: :unprocessable_entity
    # end
    render "hello"
  end



  private

end
