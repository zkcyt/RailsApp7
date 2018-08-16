class CreateQuestionaryResults < ActiveRecord::Migration[5.1]
  def change
    create_table :questionary_results do |t|
      t.integer :questionary_id
      t.text :result

      t.timestamps
    end
  end
end
