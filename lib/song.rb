class Song
  attr_reader :title, :artist
  attr_accessor :price, :duration

  def initialize(title, artist, duration, price)
    @title = title
    @artist = artist
    @duration = duration
    @price = price
  end
end