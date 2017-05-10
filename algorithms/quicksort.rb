# Quick sort in Ruby

# passing quicksort.rb to time:
# ruby quicksort.rb  0.07s user 0.02s system 93% cpu 0.100 total

class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

a = Array.new(10000) { rand(1..10000) }

puts a.quicksort
