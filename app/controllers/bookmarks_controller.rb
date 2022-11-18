class BookmarksController < ApplicationController
  def show
    @bookmarks = Bookmark.find(params[:id])
  end
end
