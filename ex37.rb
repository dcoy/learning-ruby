# Symbols Review

symbols = <<SYMDOC
Keyword = Description = Example

BEGIN = Script start = BEGIN { puts "HI" }
END = Script done = END { puts "HI" }
alias = another name for function = alias X Y
and = logical and, but lower priority than && = puts "Hello" and "Goodbye"
begin = start a block, usually for exceptions = begin end
break = break out of a loop = while true; break; end
case = case style conditional, like 'if' = case X; when Y; else; end
class = define a new class = class X; end
def = define new function = def x(); end
defined? = is this class/functino/etc. defined? = defined? Class == "constant"
do = create a block that maybe takes a param = (0..5).each { |x| puts x }
else = else conditional = if X; else; end
elsif = else if conditional = if X; elseif Y; else; end
end = ends blocks, functions, classes, everything = begin end # many others
ensure = run code whether exception happens or not = begin ensure end
for = for loop syntax/use '.each' instead = for X in Y; end #wrong way
  #right way (0..5).each { |x| puts x }
if = if conditional = if X; end
in = in part of for-loops = for X in Y; end
module = define new module = module X; end
next = skip to next element of '.each' selector = (0..5).each {|Y| next }
not = logical not, but use '!' instead = not true == false
or = logical or, use '||' = puts "Hello" or "Goodbye"; puts "Hello" || "Goodbye"
redo = rerun a code block exactly the same = (0..5).each {|i| redo if i > 2}
rescue = run this code if exception happens = begine rescue X; end
retry = in a rescue clause, says to try the block again = (0..5).each{|i| retry if i > 2}
return = return value from function = return X
self = the current object, class or module = defined? self == "self"
super = the parent of the this class = super
then = used with if optionally = if true then puts "hi" end
undef = remove a function definition from a class = undef X
unless = inverse of if = unless false then puts "not" end
until = inverse of while, executes a block as long as false = until false; end
when = part of case conditionals = case X; when Y; else; end
while = while loop = while true; do X; end
yield = pause and trasnfer control to the code block = yield

SYMDOC

puts symbols
