class Submission < ActiveRecord::Base

validates :clubber_name, presence: true
validates :album_title, presence: true
validates :tracks, presence: true

end