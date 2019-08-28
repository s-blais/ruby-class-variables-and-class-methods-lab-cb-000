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

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.has_key?(genre)
        genre_hash[genre] += 1
      else genre_hash[genre] = 1
      end
    end
    genre_hash
  end

end
