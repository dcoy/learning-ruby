teams = {
  'San Antonio Spurs' => {
    'Small Forward' => 'Kawhi Leonard',
    'Manu Ginobli' => 'Shooting Guard',
    'Tony Parker' => 'Point Guard'
  },
  'San Antonio Rampage' => {
    'Center' => 'Felix Girard',
    'Defensemen' => 'Chris Bigras',
    'Goalie' => 'Spencer Martin'
  }
}

teams.each do |team, players|
  puts team
  players.each do |position, player|
    puts "#{player} starts at #{position}."
  end
end
