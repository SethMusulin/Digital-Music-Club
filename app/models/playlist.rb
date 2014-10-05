class Playlist < ActiveRecord::Base
has_many :songs, :dependent=> :destroy
accepts_nested_attributes_for :songs, :reject_if => lambda {|a| a[:artist].blank? || a[:title].blank?}
end