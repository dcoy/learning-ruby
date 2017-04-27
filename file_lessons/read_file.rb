teams = File.read('./file_lessons/teams.txt')
movies = File.read('./file_lessons/movies.txt')

arr_master = teams.split(', ') + movies.split(', ')

arr_master.each do |ele|
  p ele.upcase
end
