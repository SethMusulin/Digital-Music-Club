class AddPublishedToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :published, :boolean, default: false
  end
end
