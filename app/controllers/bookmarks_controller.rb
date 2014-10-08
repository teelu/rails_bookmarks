class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.order(:title)
  end

  def show
  end
end
