# Bad performance, but good to know
# Example: https://www.cs.usfca.edu/~galles/visualization/ComparisonSort.html

# passing bubble_sort.rb to time:
# ruby bubble_sort.rb  7.98s user 0.05s system 99% cpu 8.053 total

def bubble_sort(array)
  n = array.length

  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end

  array
end

a = Array.new(10000) { rand(1..10000) }

puts bubble_sort(a)
