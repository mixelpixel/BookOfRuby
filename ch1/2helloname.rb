# the put string command, puts, adds a linefeed at the end of the string
# whereas the print command does not.
# Note the space at the end of the print string is not necesary with the puts string
# gets() reads in the string entered by the program user and in this script
# that input (a string) is assigned to the variable "name"
# Ruby infers type and knows that the variable "name" is the type "string"

print('Enter your name: ')
# puts('Enter your name:')
# the brackets after gets() are optional as are the ones
# enclosing thee strings after print ans puts
name = gets()
puts("Hello #{name}")
# NOTE: embedding within a string with a #{} only works in double quotes, e.g.:
puts('Hello #{name}')