class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    # returns a string for the name of the song's genre 
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if an Drake is *not found*
    # drake_here = Artist.find_or_create_by(name: "Drake")
    # self.artist = drake_here

    Artist.find_or_create_by(name: "Drake") do |drake|
      self.artist = drake
    end
  end
end