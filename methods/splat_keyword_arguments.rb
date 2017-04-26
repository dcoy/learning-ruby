# Splat allows you to pass values
# into an argument, treated as an array

# Players argument pushed to array
def roster(*players)
  puts players
end

# Players argument pushed to hash
def roster2(**players_with_positions)
  players_with_positions.each do |player, position|
    puts "Player: #{player}"
    puts "Position: #{position}"
    puts "\n"
  end
end

roster("David", "Tom", "Steen", "Richard")
data = {
  "David": "First base",
  "Tom": "Second base",
  "Steen": "Third base",
  "Richard": "Outfield"
}

def invoice(options={})
  puts options[:company]
  puts options[:total]
  puts options[:other_things]
end


roster2(data)
invoice(company: "Google", total: 200.0, other_things: "Stuff")
