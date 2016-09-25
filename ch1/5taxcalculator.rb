taxrate = 0.175
print "Enter price (excluding tax): "
s = gets
subtotal = s.to_f

if (subtotal < 0.0) then
  subtotal = 0.0
end

tax = subtotal * taxrate
puts "Tax on $#{subtotal} is $#{tax}, so grand total is $#{subtotal + tax}."


=begin
NOTE: brackets are not required in if statements, nor is the "then"
but in the following style, they both are:
=end

if (subtotal < 0.0) then subtotal = 0.0 end

=begin
The "end" to terminate a conditional block is ALWAYS required
=end

