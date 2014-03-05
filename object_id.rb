#obj = Object.new
#puts "The id of obj is #{obj.object_id}."
#str = "Strings are objects too, and this is a string!"
#puts "The id of the string object str is #{str.object_id}."
#puts "And the id of the integer 100 is #{100.object_id}."
################################################################
#a = Object.new
# b = a
#puts "a's id is #{a.object_id} and b's id is #{b.object_id}."
#################################################################


#def obj.one_arg(*x)
#
#end
#obj.one_arg(1,2,3)

def say_goodbye
  x = "Goodbye"
  puts x
end

def start_here
  x = "Hello"
  puts x
  say_goodbye
  puts "Let's check wherther x remained the same: "
  puts x
end

start_here