def bubble_sort(arr)
	((arr.length) - 1).times do |i|
		swap = false
		((arr.length) - 1 - i).times do |j|
			if(arr[j] > arr[j+1])
				arr[j],arr[j+1] = arr[j+1],arr[j]
				swap = true
			end
		end
	end
	return arr
end

def bubble_sort_by(arr)
	((arr.length) - 1).times do |i|
		swap = false
		((arr.length) - 1 - i).times do |j|
			if yield(arr[j],arr[j+1]) < 0
				arr[j],arr[j+1] = arr[j+1],arr[j]
				swap = true
			end
		end
	    
	end
	return arr
	    p arr
end

p bubble_sort([1,2,4,3,6,5])
p bubble_sort_by(["hi","hello","hey"]) { |left, right| right.length - left.length }
