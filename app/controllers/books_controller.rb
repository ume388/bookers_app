class BooksController < ApplicationController
 def top
 end
 
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book), notice: 'Book was successfully created.'
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    redirect_to book_path(params[:id]), notice: 'Book was successfully updated.'
  end
    
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path, notice: 'Book was successfully destroyed.'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :category, :body)
  end
  
end
