class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.where(category: selected_category).order(:title)
  end

  private

  def selected_category
    params[:category].presence || Bookmark::CATEGORIES
  end
end
