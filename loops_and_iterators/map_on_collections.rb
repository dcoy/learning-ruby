# Using map on collections

# Assign length of each word to
# the specific word in a Hash
puts Hash[%w(A dynamic open source programming language).map { |x| [x,x.length]}]

new_hash = {:a => 'foo', :b => 'bar', :lat => '120.343', :long => '33.212'}
puts new_hash.map { |a, b| "#{a}=#{b}" }.join('&')
