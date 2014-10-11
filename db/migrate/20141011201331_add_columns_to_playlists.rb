class AddColumnsToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :source, :string
    add_column :playlists, :picture, :string
  end
end
