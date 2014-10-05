class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :creator
      t.string :name
      t.timestamps
    end
  end
end

