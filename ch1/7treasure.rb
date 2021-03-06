=begin
MESSAGES, METHODS AND POLYMORPHISM
The same 'message' (such as "talk" in 6dogs.rb) can be sent to
different objects (e.g. cats and dogs) AND each different object
responds differently to the sma emessage with its own special method
(e.g. the return from "talk" in Cat was different than the return
from "talk" in Dog. This Object Oriented feature is called,
POLYMORPHISM.
=end

# NOTE: when you run a program, Ruby creates a "main" object

puts self         # <-- main
puts self.class   # <-- Object - the ultimate ancestor of all other classes

# OOD - would it be less repetitive to have an Animal class with
# two descendent classes, Cat and Dog?

class Animal

  def set_name( aName )
    @aName    = aName
  end

  def get_name
    @aName           # <-- no explicit "return"
  end

end

class Dog < Animal
  def talk
    'woof'            # still repetitive
  end
end

class Cat < Animal
  def talk            # still repetitive
    'meow'
  end
end

# (THERE ARE BETTER WAYS STILL...)

mydog = Dog.new
mydog.set_name( 'Lucy' )
puts mydog.get_name

mycat = Cat.new
mycat.set_name( 'Elvis' )
puts mycat.get_name





=begin
CONSTRUCTORS - NEW AND INITIALIZE
when a clas contains a method named "initialize" it will automatically
be called when an object is created using the ".new" method. The initialize
method can set the values of an objects instance variables.
=end


class Thing

  def set_name( aName )
    @name     = aName       #  <-- name vs aName ?
  end

  def get_name
    return @name
  end

end


class Treasure

  def initialize( aName, aDescription )
    @name        = aName
    @description = aDescription
  end

  def to_s       # <-- OVERRIDE DEFAULT to_s METHOD
    "The #{@name} Treasure is #{@description}\n"
  end

end


thing1 = Thing.new
thing1.set_name( "A lovely Thing" )
puts thing1.get_name

t1 = Treasure.new("Sword", "an Elvish weapon of finest quality")
t2 = Treasure.new("Ring", "a magic ring of grewat power")
puts t1.to_s
puts t2.to_s

# The .inspect method lets you look inside an object
puts "Inspecting 1st treasure: #{t1.inspect}"





# Another stab at Animal:


class Animal

  def initialize( words='...' )
    @words = words
  end

  def set_name( aName )
    @name    = aName
  end

  def get_name
    return @name
  end

  def talk
    return @words
  end

end


class Dog < Animal

  def initialize( word='woof' )
    @words      = word
  end

end


class Cat < Animal

  def initialize( word='meow' )
    @words      = word
  end

end


x = Dog.new
x.set_name('Mojo')
puts "#{x.get_name} says, '#{x.talk}'"

a = Animal.new
puts("Inspecting Animal: #{a.inspect}")
puts("Inspecting Dog   : #{x.inspect}")
b = Cat.new
puts("Inspecting Cat   : #{b.inspect}")

p Cat.new.get_name          # <-- valid method, but a 'nil' value
# p Cat.new.get_moar_food     # <-- NoMethodError
 


=begin
NOTE: GARBAGE COLLECTION - in additino to CONSTRUCTORS, some languages
also require DESTRUCTORS (like del() in Python). Ruby has a built-in "garbage
collector" which "destroys" objects and reclaims the memory they used when
they are no longer referenced by by the program.
=end 



# INSPECTING OBJECTS

puts t1.inspect

=begin
The .inspect method is defined for all Ruby objects. It returns a string:
#<Class name: #internal#id#code#for#the#specific#instance# @object_variable_name="object variable value">
=end


a = "hello"
b = 123
c = Treasure.new( 'ring', 'gold thing' )

p( a )
p( b )
p( c )



