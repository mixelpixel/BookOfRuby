# lotsa stuff can get embedded in strings
# "\" is an 'escape' character \n for new line, \t for tab, etc...
# #{} can also embed computations as well as variables

name = "Fred"
puts("Hello #{name}")

puts("\n\t#{(1+2)*3}\nGoodbye")