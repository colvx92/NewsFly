class AddUserIdToSavedArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :saved_articles, :user, foreign_key: true
  end
end
