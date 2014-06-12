require 'date'

class Song
  attr_reader :title, :artist_name, :duration, :release_date, :artist_percentage
  attr_accessor :price

  def initialize(title, artist_name, duration, price, release_str)
    @title = title
    @artist_name = artist_name
    @duration = duration
    @price = price
    @release_date = Date.strptime(release_str, '%m-%d-%Y')
  end

  def years_since_release
    Date.today.year - @release_date.year
  end

  def artist_percentage
    [0.20 - 0.05 * (years_since_release / 5).floor, 0].max
  end

  def show
    "#{@title} by #{artist_name}"
  end

end

