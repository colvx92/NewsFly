class UserController < ApplicationController
  def index
    parsed = params[:source].split.join('-')
    @articles = Api.articles(parsed)
  end
end
