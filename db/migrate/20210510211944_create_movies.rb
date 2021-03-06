class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :rated
      t.string :released
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :writer
      t.string :actors
      t.string :language
      t.string :country
      t.string :awards
      t.string :poster
      t.string :imdbRating
      t.string :imdbVotes
      t.string :box_office
      t.string :production

      t.timestamps
    end
  end
end
