class CreateNewsPosts < ActiveRecord::Migration
  def change
    create_table :news_posts do |t|

      t.timestamps
    end
  end
end
