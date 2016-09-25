subtotal = 100.00 # floating point number
taxrate = 0.175
tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal + tax}."

taxrate = 0.175
print "Enter price (excluding tax): "
s = gets
subtotal = s.to_f
# .to_f converts string to floating point number
# .to_f is a methos of the String class. NOTE: If a string cannot
# be converted then 0.0 is returned

tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal + tax}."

# another way to make multi-line comments
=begin
All the lines of text in between =begin and =end
will be ignored by the Ruby interpreter
so long as =begin and =end are flush to the
left margin.
=end

