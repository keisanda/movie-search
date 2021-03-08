class CreateRandomMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :random_movies do |t|
      t.integer :user_id
      t.string :name
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
