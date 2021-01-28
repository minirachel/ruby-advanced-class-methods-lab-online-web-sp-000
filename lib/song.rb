class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    # song = Song.new_by_name("The Middle")
    song = self.new
    song.name = name
        #takes in string name of a song
    # song.save
        #takes in string name of a song
    song
    #returns song instance 
      #song name set as name property
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    @@all.find {|s| s.name == name}
  end

  def self.find_or_create_by_name(name)
    self.new_by_name
    if self.find_by_name = name
      song.name
    else
      self.create_by_name
    end
  end
end
