class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :duration
      t.integer :artist_id

      t.timestamps null: false
    end
    add_index :songs, :artist_id
  end
end
