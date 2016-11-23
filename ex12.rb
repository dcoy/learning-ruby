# Exercise 12: Prompting People for Numbers

print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number as a decimal: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

# Study Drill Script - money conversion

print "Give me an amount: "
money_amount = gets.chomp
ten_less_money = money_amount.to_f * 0.1

puts "You gave me #{money_amount}, but 10% is #{ten_less_money}."
