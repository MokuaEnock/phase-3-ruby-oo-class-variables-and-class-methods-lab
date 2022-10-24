class Song

  attr_accessor :name, :genre, :artist
  @@genres = []
  @@artists = []
  @@count = 0
  def initialize(name, genre, artist)
    @name = name
    @genres = genre
    @artists = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
  genre_count = {}
  @@genres.each do |genre|
    if genre_count[genre]
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
    end
  end
  genre_count
  end


end


kenya = Song.new("anthem", "national anthem", "kenyans")



pp Song.artists

# .push() .unshift()

# <<
["Rap", "Worship", "Gengetone"]
# .uniq


