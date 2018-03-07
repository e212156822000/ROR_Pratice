class SearchController < ApplicationController
	def search
    search = params[:term].present? ? params[:term] : nil
    @users = if search
      # User.where("title LIKE ? OR description LIKE ?","%#{search}%", "%#{search}%")
      User.search(search)
    else
      User.all
    end
  end
end
