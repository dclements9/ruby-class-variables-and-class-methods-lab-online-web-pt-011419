class Song
  @@count = 0
  @@genre = []
  @@artist = []

  attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        unless @@genre.include?(genre)
          @@genre << genre
        end
        unless @@artist.include?(artist)
          @@artist << artist
        end
    end
    def self.count
      @@count
    end
    def self.genre
      @@genre
    end


end
