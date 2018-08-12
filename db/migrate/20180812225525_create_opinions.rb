class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.text :title
      t.text :content
      t.text :name

      t.timestamps
    end
  end
end
