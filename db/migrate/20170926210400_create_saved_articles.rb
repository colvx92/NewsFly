class CreateSavedArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_articles do |t|
      t.string :source
      t.string :title
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
