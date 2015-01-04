puts "Reading from 'temp.dat' and I will print out it to 'temp.out'..."
input = File.read("temp.dat")
c = input.to_i
f = (c * 9 / 5) + 32
puts ("Saving result to 'temp.out', please check it...")
output = File.new("temp.out", "w")
output.puts f
output.close