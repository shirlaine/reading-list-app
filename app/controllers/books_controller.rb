class BooksController < ApplicationController

  def index
    @books = Book.order(:title)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Your entry has been saved!"
      redirect_to books_path
    else
      render :new
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Your entry has been updated!"
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Your entry has been deleted!"
    redirect_to books_path
  end

  def true
    @book = Book.find(params[:id])
    @book.read = true
    @book.save
    redirect_to books_path
  end

  def false
    @book = Book.find(params[:id])
    @book.read = false
    @book.save
    redirect_to books_path
  end

private

  def book_params
    params.require(:book).permit(:title,:author)
  end

end
