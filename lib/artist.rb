require 'pry'
class Artist

attr_accessor :name, :songs

def initialize(name)
    @name = name
    
end

def songs
Song.all
end

def add_song(song)
 song.artist = self
#@@songs << song
end

def add_song_by_name (song)
    song = Song.new(song)
    song.artist = self
   # @@songs << song
    
end

def self.song_count
    #@@counter 
#binding.pry
    Song.all.size



end


#describe "#add_song" do
#it "takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist" do
#    hello = Song.new("Hello")
#    adele.add_song(hello)
 #   expect(adele.songs).to include(hello)
 #   expect(hello.artist).to eq(adele)
 # end










end