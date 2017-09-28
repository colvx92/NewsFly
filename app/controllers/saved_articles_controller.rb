class SavedArticlesController < ApplicationController
    before_action :current_user, only: :create
  def new
  end

  def create
    options = {}
    options['source'] = params['source']
    options['title'] = params['title']
    options['link'] = params['link']
    options['image'] = params['image']
    @article = SavedArticle.new(options)
    @article.user_id = current_user.id
    respond_to do |format|
      if @article.save
        format.html { redirect_back(fallback_location: "/") }
        format.js {}
      else
        # TODO this is your homework :) ERROR
      end
    end
  end

  def destroy
    @article.destroy
    redirect_to my_articles_path
  end

  private

  def article_params(params)
    options = {}
    options['source'] = params['source']
    options['title'] = params['title']
    options['link'] = params['link']
    options['image'] = params['image']
    options['current_user'] = current_user
  end

end
