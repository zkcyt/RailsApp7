class AddPostsDetailsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :posts_details, :text
  end
end
