# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_songs_on_artist_id  (artist_id)
#

class Song < ApplicationRecord
  belongs_to :artist
#Validation
  #name present, minimum 2 characters
  validates :name, presence: true, length:{minimum:2}
  #artist is present and real
  validates :artist_id, presence:true

  #to check the below, we actually have to go to the database
  validates :artist, presence: true


end
