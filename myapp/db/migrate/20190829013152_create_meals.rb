class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :content
      t.string :user_id

      t.timestamps
    end
  end
end
