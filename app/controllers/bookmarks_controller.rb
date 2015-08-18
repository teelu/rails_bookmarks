class BookmarksController < ApplicationController
  def index
    bookmarks = Bookmark.all
    render json: bookmarks
  end

  def create
    bookmark = Bookmark.new(bookmark_params)
    if bookmark.save
      render json: bookmark, status: :created
    else
      render json: {message: "400 Bad Request"}, status: :bad_request
    end
  end

  def update
    bookmark_id = params.require(:id)
    begin
      bookmark = Bookmark.find(bookmark_id)
      if bookmark = Bookmark.update(bookmark_id, bookmark_params)
        render json: bookmark, status: :ok
      else
        render json: {message: "400 Bad Request"}, status: :bad_request
      end
    rescue ActiveRecord::RecordNotFound
      render json: {message: "No Record Found"}
    end
  end

  def delete
    bookmark_id = params.require(:id)
    begin
      if Bookmark.find(bookmark_id)
        if Bookmark.delete(bookmark_id)
          render json: {message: "Success"}, status: :ok
        end
      else
        render json: {message: "400 Bad Request"}, status: :bad_request
      end
    rescue ActiveRecord::RecordNotFound
      render json: {message: "Record Not Found"}
    end
  end

  def category_list
    category = params.require(:category)
    bookmarks = Bookmark.where(category: category)
    render json: bookmarks
  end

  def favorite
    bookmarks = Bookmark.where(favorite: true)
    render json: bookmarks
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:url, :title, :comment, :category, :favorite)
  end
end
