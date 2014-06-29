class BookmarksController < ApplicationController
  before_action :find_bookmark, except: [:index, :new, :create]

  def index
    @bookmarks = Bookmark.where(category: selected_category).order(:title)
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def edit
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    save_bookmark_or_render(:new)
  end

  def update
    @bookmark.assign_attributes(bookmark_params)
    save_bookmark_or_render(:edit)
  end

  def destroy
    @bookmark.destroy!
    flash[:success] = 'Bookmark deleted.'
    redirect_to bookmarks_path
  end

  private

  def selected_category
    params[:category].presence || Bookmark::CATEGORIES
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:title, :url, :category, :comment, :is_favorite)
  end

  def save_bookmark_or_render(action)
    if @bookmark.save
      flash[:success] = 'Bookmark saved!'
      redirect_to @bookmark
    else
      flash.now[:danger] = 'Error: ' + @bookmark.errors.full_messages.join(', ')
      render action
    end
  end
end
