module Enumerable
	def my_each
		i = 0
		while i < self.size
			yield(self[i])
			i += 1
		end
		self
	end
	#*********************

	def my_each_with_index
		index = 0
		self.my_each do |element|
			yield(element,index)
			index += 1
		end  
	end
	#********************

	def my_select
		arr = []
		self.my_each do |element|
			if yield(element) == true
				arr.push(element)
			end
		end
		return arr
	end
	#********************

	def my_all?
		status = true
		self.my_each do |element|
			if yield(element) == false
				status = false
			end
		end
		return status
	end
	#********************

	def my_any?
		status = false
		self.my_each do |element|
			if yield(element) == true
				status = true
			end
		end
		return status
	end
	#*********************

	def my_none?
		status = true
		self.my_each do |element|\
			if yield(element) == true
				status = false
			elsif yield(element) == false
				status = true
			end
		end
		return status	
	end
	#*************************

	def my_count(element = nil)
		count = 0
		self.my_each do |e|	
			if element == nil
				count = self.size
			else
				count += 1 if e == element
			end
		end
		return count
	end
	#**************************

	#def my_map()
		#arr = []
		#self.my_each do |element|
		#	arr.push(yield element)
		#end
		#return arr
	#end
	def my_map(&proc)
		arr = []
		self.my_each do |element|
			if proc
				arr.push(proc.call(element))
			else
				arr.push(yield(element))
			end
		end
		return arr
	end
	#***************************

	def my_inject(e = 0)
		self.my_each do |element|
			e = (yield e, element)
		end
		return e
	end
	#***************************

end
def mutiply_els(arr)
		arr.my_inject(1) {|result, element| result * element}
end
p "my_each"
[1,2,7].my_each {|num| p "#{num}"}
p "my_each_with_index"
[1,2,7].my_each_with_index {|element, index| p "#{element}: #{index}"}
p "my_select"
p [1,2,7].my_select {|element| element.even?}
p "my_all"
p [1,2,7].my_all? {|element| element < 10}
p "my_any"
p [1,2,7].my_any? {|element| element > 10}
p "my_none"
p [1,2,7].my_none? {|element| element  == 10}
p "my_count"
p [1,2,7].my_count
p [1,2,7].my_count(2)
p "my_map"
p [1,2,7].my_map {|i| i*i}
p "my_inject"
p [1,2,3].my_inject(2) {|result, element| result ** element}
p "mutiply_els"
p mutiply_els([1,2,3])
p "13, 14"
test = Proc.new{|z| z ** 3}
p [1,2,3].my_map(&test)