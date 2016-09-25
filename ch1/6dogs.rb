=begin
Classes, Objects and Methods
A 'class' is the blueprint for an 'object'.
The 'class' defines the data an object contains AND how it behaves.
A 'method' is a function defined in a class.
A ruby object is defined by a class.
Instance variables (start w/@) belong to individual objects and
...individual objects are instances of the class.
=end

# NOTE: the operator "=" is a rare exception to the rule that
# everything you do with an object is done by a method.


class Dog                 #  <-- lowercase "class", uppercase "ClassName"

  def set_name( aName )   #  <-- method & (incoming argiument)
    @my_name = aName      #  <-- instance variable assigns the VALUE of
  end                     #      the (incoming argument) to an "@"
                          #      @instance_variable

  def get_name            #  <-- method with no arguments
    return @my_name        #  <-- the "return" keyword is OPTIONAL
  end


  def talk                # <-- method
    return 'woof!'
  end

end

# A simple structure of a SETter and a GETter.


mydog = Dog.new
yourdog = Dog.new


mydog.set_name( 'Lucy' )
yourdog.set_name( 'Rambo' )

puts mydog, yourdog # <-- not very informative
puts mydog.inspect  # <-- a little more useful
# puts mydog.my_name  # <-- NoMethodError


puts(mydog.get_name)
puts(mydog.talk)
puts yourdog.get_name
puts yourdog.talk


=begin
ENCAPSULATION AND DATA HIDING
The data inside an object is 'private'
We define ways in and ways out for data
Only the object itself can mess around
with its internal state = Data Hiding:
part of the principle of "Encapsulation"
=end


class Cat

  def set_name( catName )
    @catName = catName
  end

  def get_name
    return @catName
  end

  def talk
    return 'meow!'
  end

end

mycat = Cat.new
mycat.set_name('Eddie Spagetti')
puts mycat.get_name
puts mycat.talk


