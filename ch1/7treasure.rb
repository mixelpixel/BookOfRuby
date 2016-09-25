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
puts self.class   # <-- Object

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

# THERE ARE BETTER WAYS STILL

mydog = Dog.new
mydog.set_name( 'Lucy' )
puts mydog.get_name

mycat = Cat.new
mycat.set_name( 'Elvis' )
puts mycat.get_name


