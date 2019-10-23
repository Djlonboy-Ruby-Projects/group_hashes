# Group the array of hashes below into a hash, where each key
# of the hash is a sport, and each value of the hash is a list of
# names of people who play that sport.

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
  ]
# Check the original array
puts players.inspect

# Create a new array
sports_players = {}

# For each hash in players
players.each do |players|
  # If the sport doesn't exist yet, create it and add the first player
  if sports_players[players[:sport].to_sym] == nil
    sports_players[players[:sport].to_sym] = [players[:name]]
  # If the sport already exists, push the next player into the array
  else
    sports_players[players[:sport].to_sym].push(players[:name])
  end
end

# Check the new hash
puts sports_players.inspect













exit



# create new array
sports_players = []

# loop over the items in players and enter them into the new array
players.each do |entry|
  sports_players.push(entry[:sport].to_sym => entry[:name])
end

# Print the new array to the screen
puts sports_players.inspect
