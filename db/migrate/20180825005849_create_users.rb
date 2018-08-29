class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :sitename
      t.integer :account_id
      t.text :intro

      t.timestamps
    end
  end
end
