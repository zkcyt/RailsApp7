class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.text :name
      t.integer :age
      t.text :mail

      t.timestamps
    end
  end
end
