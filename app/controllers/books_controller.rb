class BooksController < ApplicationController

def create
  @book = Book.new(book_params)
  @book.user_id = current_user.id
  if @book.save
    redirect_to book_path(@book.id)
  else
    @book = Book.all
    render :index
  end
end

def index
    @books = Book.all
    @book = Book.new
end

def show
  @book = Book.find(params[:id])
end

def edit
  
end
def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to books_path
end

private

def book_params
  params.require(:book).permit(:title, :body)
end

end
