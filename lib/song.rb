require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genre << genre
        @@artists << artist
    end
    def self.count
      @@count
    end
    def self.genres
      @@genres
    end
    def self.artists
      @@artists
    end


end
