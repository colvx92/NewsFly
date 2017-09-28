class UserController < ApplicationController
  def index
    unless params[:source].blank?
      parsed = params[:source].split.join('-')
      @articles = Api.articles(parsed)
    end
  end

  def show
    @articles = current_user.saved_articles
  end

end
