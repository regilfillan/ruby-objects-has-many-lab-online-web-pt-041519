class Artist 
  attr_accessor :name
  @@all= []
  
  def initialize(name)
    @name= name
    @@all << self
    @songs = []
  end
  
  def songs 
    @songs
  end  
  
  def add_song(song)
    song.artist =self
    @songs << song
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
   add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
  
end