class BookmarksController < ApplicationController

  before_action :prepare_book

  def index
    @bookmarks = @book.bookmarks.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @book = Book.find(params[:book_id])
    @bookmark = @book.bookmarks.new(bookmark_params)
    puts @bookmark.page_number
    puts @bookmark.description
    if @bookmark.save!
      redirect_to book_path(@book), method: :post
    else
      render :new
    end
  end

  def edit
    @bookmark = @book.bookmarks.find(params[:id])
  end

  def update
    @bookmark = @book.bookmarks.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to book_path(@book), method: :put
    else
      render :edit
    end
  end

  def destroy
    @bookmark = @book.bookmarks.find(params[:id])
    @bookmark.destroy
    redirect_to book_path(@book)
  end

  private

  def prepare_book
    @book = Book.find(params[:book_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:page_number, :description, :book_id)
  end

end
