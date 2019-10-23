# Group the array of hashes below into a hash, where each key
# of the hash is a sport, and each value of the hash is a list of
# names of people who play that sport.

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]

# create new array
sports_players = []

# loop over the items in players and enter them into the new array
players.each do |entry|
  sports_players.push(entry[:sport].to_sym => entry[:name])
end

# Print the new array to the screen
puts sports_players.inspect
