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
        @@genres << genre
        @@artists << artist
    end
    def self.count
      @@count
    end
    def self.genres
      unique_genre_array = []
      @@genres.each do |genre|
        unless unique_genre_array.include?(genre)
        unique_genre_array << genre
        end
      end
      unique_genre_array
    end
    def self.artists
      @@artists
    end


end
