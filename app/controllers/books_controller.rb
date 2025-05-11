class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(list_params)
    if book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end

end
