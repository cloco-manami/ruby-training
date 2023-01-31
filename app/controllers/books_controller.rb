class BooksController < ApplicationController
  def index
    books = Book.all
    render json: { status: 'SUCCESS', message: 'Loaded books', data: books }
  end

  def create
    # #todo : mana needs to create book with parameters from api
    book = Book.new(book_params)

    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  def show
    @book = Book.find(params[:id])
    render json: { status: 'SUCCESS', message: 'Loaded the book', data: @book }
  end

  def destroy
    Book.find(params[:id]).destroy!

    render json: { status: 'SUCCESS', message: 'Deleted the book' }
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      render json: { status: 'SUCCESS', message: 'Updated the book', data: @book }
    else
      render json: { status: 'ERROR', message: 'Not updated', data: @book.errors }
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :content)
  end
end
