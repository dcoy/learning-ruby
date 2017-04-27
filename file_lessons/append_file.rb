10.times do
  sleep 1
  puts "Record saved..."
  File.open('./file_lessons/logs.txt', 'a') { |f| f.puts "Server started at: #{Time.new}"}
end
