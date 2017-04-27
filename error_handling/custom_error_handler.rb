# Building a custom error handler in Ruby

def error_logger(e)
  File.open('./error_handling/error_log.txt', 'a') do |file|
    file.puts(e)
  end
end

begin
  puts 10 / 0
rescue StandardError => e
  error_logger("Error: #{e} at #{Time.now}")
end
