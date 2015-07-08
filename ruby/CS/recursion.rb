class Recursion
	# itoration

	def fibs
		p "Please enter the number of Fibonacci:"
		n = gets.to_i
		fib1 = 1
		fib2 = 1
		
		if n == 0 || n == 1
			fib = 1
		else
			p fib1
			p fib2
			for i in 2..n
				fib = fib1 + fib2
				fib1 = fib2
				fib2 = fib
				p fib
			end
		end
	end

	# recursion
	def fib_recursion(n, array = [1,1])
	  return array[0] if n == 0
	  return array if n == 1 || array.length > n
	  fib_recursion(n, (array << (array[-1] + array[-2])))
	end



end

r = Recursion.new
p r.fibs_rec(5)
p r.fib_recursion(5)