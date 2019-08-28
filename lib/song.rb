class Song

  attr_reader :name, :artist, :genre

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre unless @@genres.include? (genre)
  end

  @@count = 0
  def self.count
    @@count
  end

  @@genres = []
  def self.genres
    @@genres.uniq
  end
end
