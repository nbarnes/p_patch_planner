class PopulateNewsPosts < ActiveRecord::Migration
  def change
    add_column :news_posts, :title, :string
    add_column :news_posts, :body, :text
  end
end
