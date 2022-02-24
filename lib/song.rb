class Song
    attr_reader :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = @@artists.push(artist)[-1]
        @genre = @@genres.push(genre)[-1]
        @@count += 1
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        hash = Hash.new
        @@genres.uniq.each {|genre| hash[genre] = @@genres.filter {|i| i == genre}.length}
        hash
    end
    def self.artist_count
        hash = Hash.new
        @@artists.uniq.each {|artist| hash[artist] = @@artists.filter {|i| i == artist}.length}
        hash
    end
end