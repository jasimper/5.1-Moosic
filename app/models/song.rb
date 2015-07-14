class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_playlists
  has_many :playlists, through: :song_playlists

  validates :title, :duration, presence: true
  validates :duration, length: { in: 1..5 }, numericality: { greater_than: 0 }
end
