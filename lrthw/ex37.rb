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

dtypes = <<DATATYPE
type = description = example
true = true boolean value = true or false == true
false = false boolean value = false and true == false
nil = represents "nothing" or "no value" = x = nil
strings = stores textual informatino = x = "Hello"
numbers = stores integers = i = 100
floats = stores decimals = i = 100.12
arrays = stores a list of things = j = [1, 2, 3, 4]
hashes = stores a key=value mapping of things = e = {'x' => 1, 'y' => 2}

DATATYPE

operators = <<OPRTRS
operator = description = example
+ = add = 2 + 4 == 6
- = subtract = 2 - 4 == -2
* = multiply = 2 * 4 == 8
** = powerof = 2 ** 4 == 16
/ = divide = 2 / 4.0 == 0.5
% = modulus = 2 % 4 == 2
> = greater than = 4 > 4 == false
. = dot access = "1".to_i == 1
:: = colon access = Module::Class
[] = list brackets = [1,2,3,4]
! = not = !true == false
< = less than = 4 < 4 == false
>= = greater than or equal = 4 >= 4 == true
<= = less than or equal = 4 <= 4 == true
<=> = comparison = 4 <=> 4 == 0
== = equal = 4 == 4 == true
!= = not equal = 4 != 4 == false
&& = logical and (higher precedence) = true && false == false
|| = logical or(higher precedence) = true || false = true
.. = range inclusive = (0..3).to_a == [0, 1, 2, 3]
... = range non-inclusive = (0.3).to_a == [0, 1, 2]
@ = object scope = @var ; @@classvar
@@ = class scope = @var ; @@classvar
$ = global scope = $stdin

OPRTRS

puts symbols
puts dtypes
puts operators
