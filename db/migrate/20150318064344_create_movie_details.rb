class CreateMovieDetails < ActiveRecord::Migration
  def change
    create_table :movie_details do |t|
      t.string :movie_id
      t.integer :star
      t.text :description

      t.timestamps
    end
  end
end
