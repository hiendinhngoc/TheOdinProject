class Book
	attr_accessor :title

	def title
		lowercase_word = %w{a an the and but or for nor of over in}
		@title.split.each_with_index.map{|x, index| lowercase_word.include?(x) && index > 0 ? x : x.capitalize}.join(" ")
	end
end