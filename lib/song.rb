class Song
  @@count = 0
  @@genre = []
  @@artists = []

  attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        unless @@genre.include?(genre)
          @@genre << genre
        end
        unless @@artists.include?(artist)
          @@artists << artist
        end
    end
    def self.count
      @@count
    end
    def self.genre
      @@genre
    end
    def self.artists
      @@artists
    end


end
