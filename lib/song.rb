class Song 
  attr_accessor :name, :artist, :genre 
  #Creates readers and writes for @name, @artist, and @genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  #Creates class variables that will be used to keep track when songs are initialized 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1 
    @@genres << genre
    @@artists << artist 
  end 
  #Accepts 3 arguments - Sets instance variables equal to those arguments - Adds arguments to class variable trackers
  
  def self.count
    @@count
  end 
  #Returns the class variable @@count, which is incremented every time a song is initialized 
  
  def self.genres 
    @@genres.uniq
  end 
  #Returns the array of genres, removing any duplicates
  
  def self.artists
    @@artists.uniq 
  end 
  #Returns the array of artists, removing any duplicates
  
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1} 
    genre_count
  end 
  # genre_count = Hash.new(0) creates a new hash whose default value for any key added is 0. So any time a key is added without a specified value, that key's value will be 0. This allows the code underneath to work without having to check if a genre key of @@genres exists before incrementing. - Then we iterate through @@genres, yielding each genre, and adding 1 to the value of that genre key every time it is yielded. So if rap appears twice in the @@genres array, the value of the rap key will be 2   
  
  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end 
  # Same exact process as the genre_count method above
  
end 





