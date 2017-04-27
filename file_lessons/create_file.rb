# Creating a file with Ruby

File.open("./file_lessons/teams.txt", "w+") { |f| f.write("Spurs, Mavericks, Kicks") }
# r - reading
# a - appending
# w - write
# w+ - read/write
# a+ - open/read/append
# r+ - read/write and update

file_to_save = File.new('./file_lessons/movies.txt', 'w+')
file_to_save.puts('City of God, Hackers, Doctor Strange')
file_to_save.close
