class AddAccountIdToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :account_id, :integer
  end
end
