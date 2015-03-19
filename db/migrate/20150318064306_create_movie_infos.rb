class CreateMovieInfos < ActiveRecord::Migration
  def change
    create_table :movie_infos do |t|
      t.string :movie_id
      t.string :title
      t.string :derector
      t.string :actor
      t.string :year
      t.integer :movie_type
      t.integer :countray
      t.string :image

      t.timestamps
    end
  end
end
