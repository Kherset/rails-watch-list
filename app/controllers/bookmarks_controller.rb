class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmarks_path(@bookmark)
  end

  def delete
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:content)
  end
end
