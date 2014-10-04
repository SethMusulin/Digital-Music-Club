class CreateSong < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist, null: false
      t.string :title, null: false
    end
  end
end
