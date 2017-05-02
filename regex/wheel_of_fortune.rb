starting_sentence = "Oh hi there, welcome"
sentence_array = starting_sentence.split(" ").map(&:downcase)
accurate_count = sentence_array - [" "]
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")

while sentence_array.count("") < accurate_count.count
  puts "Guess a letter: "
  guess = gets.downcase.chomp

  if sentence_array.include?(guess)
    letter_index = sentence_array.find_index(guess)
    sentence_array[letter_index] = ""
    final_sentence[letter_index] = guess
    puts "Correct! The sentence is now #{final_sentence.join}"
  elsif guess == "exit" || "quit"
    puts "Quitting the game now!"
    sleep 3
    puts "Bye!"
    break
  else
    puts "That letter is not correct, please try again!"
  end
end
