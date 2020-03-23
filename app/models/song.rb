class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    artist.try(:name)
  end

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    genre.try(:name)
  end
end
