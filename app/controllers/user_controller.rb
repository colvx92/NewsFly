class UserController < ApplicationController
  def index
    unless params[:source].blank?
      parsed = params[:source].split.join('-')
      @articles = Api.articles(parsed)
    end
  end
end
