class BookmarksController < ApplicationController
  before_action :find_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.order(:title)
  end

  def show
  end

  def edit
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to action: :index
  end

  private

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :comment, :favorite)
  end
end
