# This will "insert" the contents of the song.rb here

require_relative '../lib/song.rb'

# Add code to use the Song class here.

video_games = Song.new("Video Games", "Lana Del Rey", 282, 1.00, '01-01-2012')
happy = Song.new("Happy", "Pharrell", 233, 1.25, '01-01-2014')
bad_kids = Song.new("The Black Lips", "Bad Kids", 128, 0.75, '01-01-2007')

playlist = [video_games, happy, bad_kids]

def puts_all(playlist)
  playlist.each do |song|
    puts song.show
  end
end

def average_duration(playlist)
  total_duration = 0

  playlist.each do |song|
    total_duration += song.duration
  end

  average_duration = total_duration / playlist.length
end

def average_price(playlist)
  total_price = 0

  playlist.each do |song|
    total_price += song.price
  end

  average_price = total_price / playlist.length
end

puts_all(playlist)
puts
puts "The average song duration is #{average_duration(playlist)} seconds."
puts "The average song price is #{average_price(playlist)} dollars."

happy.price = 5

puts
puts "The price changed!"
puts
puts "The average song duration is #{average_duration(playlist)} seconds."
puts "The average song price is #{average_price(playlist)} dollars."

puts bad_kids.years_since_release
puts bad_kids.artist_percentage
