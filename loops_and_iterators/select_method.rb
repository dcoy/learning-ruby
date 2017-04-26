# Given an array of integers
# Only grab the even integers

# Style 1
print (1..10).to_a.select(&:even?)

# Style 2
(1..10).to_a.select{ |x| puts x.even? }

# Style 3 - block method
(1..10).to_a.select do |x|
  puts x.even?
end

# Given a sentence, return words
# greater than five letters
arr = %w(The quick brown fox jumped over the lazy dog)

arr.select { |word| word.length > 5}

arr.select do |word|
  word.length > 5
end

# Iterate over array, selecting vowels
%w(a b c d e f g h).select { |v| v=~ /[aeiou]/ }
