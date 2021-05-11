class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :movie_id

      t.timestampså
    end
  end
end
