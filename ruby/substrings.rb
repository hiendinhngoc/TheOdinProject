def substrings(str, dictionary)
	subarr = []
	str.split.each_slice(1).map{|a|a.join ' '}.each do |element|
		dictionary.length.times do |j|
			if(element == dictionary[j])
				subarr.push(element)
			end
		end
	end

	counts = Hash.new 0
	subarr.each do |word|
  		counts[word] += 1
	end
	return counts
end

puts("Please enter your string:")
str = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","shit"]
p (substrings(str, dictionary))