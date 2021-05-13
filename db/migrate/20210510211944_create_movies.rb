class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :rated
      t.string :released
      t.string :genre
      t.string :director
      t.string :writer
      t.string :language
      t.string :box_office
      t.string :actors
      t.string :poster

      t.timestamps
    end
  end
end
