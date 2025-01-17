class Song

  attr_reader :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  @@count = 0
  def self.count
    @@count
  end

  @@genres = []
  def self.genres
    @@genres.uniq
  end

  @@artists = []
  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash[artist] ||= 0
      artist_hash[artist] += 1
    end
    artist_hash
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] ||= 0
      genre_hash[genre] += 1
    end
    genre_hash
  end

end
