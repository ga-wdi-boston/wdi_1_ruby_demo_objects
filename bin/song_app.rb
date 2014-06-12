# This will "insert" the contents of the song.rb here

require_relative '../lib/song.rb'

# Add code to use the Song class here.

rap = Song.new('Harder than', 'Public Enemy', 240, 3.00)
rock = Song.new('Stairway', 'Zeppelin', 360, 2.00)
country= Song.new('Something Terrible', 'Someone Terrible', 999, 1.00)

average_songs = (rap.duration + rock.duration + country.duration)/3

puts "Average Song Duration is #{average_songs}"

