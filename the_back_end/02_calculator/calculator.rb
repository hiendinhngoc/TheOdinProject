#add two number
def add(x,y)
	x + y
end
#subtract two number
def subtract(x,y)
	x - y
end
#sum elements in array
def sum(arr)
	sum = 0 
	if (arr == [])
		sum = 0
	else
		arr.each do |i|
			sum += i
		end
	end
	sum
end
#multiply numbers
=begin
def multiply(n)
	result = 1.0
	n.times do
		p "Enter you number"
		number = gets.to_f
		result *= number
	end
	result
end
=end
def multiply(*number)
	result = 1
	number.each {|n| result = result * n}
	result
end
#power function
def power(x,y)
	result = 1
	y.times do
		result *= x
	end
	result
end
#factorial function
def factorial(n)
	factorial = 1
	if (n == 0 || n == 1)
		factorial = 1
	else 
	    factorial = factorial(n - 1) * n
	end
end