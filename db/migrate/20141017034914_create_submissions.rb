class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :clubber_name
      t.string :album_title
      t.text :tracks
      t.timestamps
    end
  end
end
