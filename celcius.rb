#print "Hello. Please enter a Celcius value: "
#c = gets
#f = (c.to_i * 9 / 5) + 32
#print "The Fahrenkeit equivalent is: "
#print f
#puts "."

# Other way

# print "Hello. Please enter a Celsius value: "
# print "The Fahrenheit equipvalent is ", gets.to_i * 9 / 5 + 32, ".\n"

# Reading from a file input#
#puts "Reading Celsius temperature value from data file..."
#num = File.read("temp.dat")
#c = num.to_i
#f = (c * 9 / 5) + 32
#puts "The number is " + num
#print "Result: "
#puts f


# Create file output#

print "Hello! Please enter a Celsius value: "
c = gets.to_i
f = (c * 9 / 5) + 32
puts "Saving result to output file 'tem.out'"
fh = File.new("temp.out", "w")
fh.puts f
fh.close