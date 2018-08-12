class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.integer :opinion_id
      t.text :content
      t.text :name

      t.timestamps
    end
  end
end
