class BooksController < ApplicationController
  def index
	@books = Book.all
  end
  def show
	@book = Book.find(params[:id])
  end
  def new
  end
  def create
	@book = Book.new(book_params)
	
	@book.save
	redirect_to @book
  end
  def update
	@book = Book.find(params[:id])
	
	if @book.update(book_params)
		redirect_to @book
	else
		render 'edit'
	end
  end
  
  private
	def book_params
		params.require(:book).permit(:title, :author, :isbn)
	end
end
