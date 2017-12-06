require 'rubygems'
require 'decisiontree'


attributes = ['Temp']
training = [
  [36.6, 'healthy'],
  [37, 'mildly sick'],
  [38, 'not so sick'],
  [36.7, 'healthy'],
  [40, 'grossly sick'],
  [50, 'super duper sick'],
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train

test = [37, 'sick']
decision = dec_tree.predict(test)
puts "Predicted: #{decision} ... True decision: #{test.last}"
