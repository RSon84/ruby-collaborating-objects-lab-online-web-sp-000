class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def save
  @@all << self #saves the artist name to the all array
end

  def add_song(song)
    song.artist = self
  end


  def songs
    @@all
  end


def add_song(song)
  song.artist = self
end

def add_song_by_name(name)
  song = Song.new(name)
  song.artist = self
end

def songs
  Song.all.select {|song| song.artist == self}
end

def self.find_or_create_by_name(artist_name)
  found_artist = self.all.find {|artist| artist.name == artist_name}
  if found_artist
    found_artist
  else
    new_artist = self.new(artist_name)
<<<<<<< HEAD
=======
    new_artist.save
>>>>>>> 80316f0bde39e71c83d4e56d652b93bf85bea96d
    new_artist
  end
end

def print_songs
 songs.each do |song|
    puts song.name
end
end
end
