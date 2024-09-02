class HomeController < ApplicationController
  def index
    if params[:search].present?
      @articles = Article.where('title LIKE ? OR description LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @articles = Article.all
    end
  end
end
