class Hangman
	attr_accessor :word

	def initialize(word)
		@word = word

		load_file
		guest
	end

	#load word from existed file
	def load_file
		arr_word = IO.readlines("5desk.txt")
		p "this is random"
		@word = arr_word.sample.chomp
		p @word
	end

	#store the guest's letters
	def guest
		i = 0
		@match = 0
		indx = []
		show_result
		p "please guest"
		(@word.length).times do
			@letter = gets.chomp
			(@word.downcase.split(//)).each_with_index do |f, index|
				if @letter != f
					@result
					i += 1
				else
					indx << index
					
					indx.each do |j|
						@result[j] = @letter
					end
					indx = []
				end
			end
			#check if no matching, show the hangman
			if i == @word.length
				@match += 1
				check_matching
			end
			#update the result
			p @result.join(" ")
			#break if all the result are correct
			if @result.join("") == @word
				break
			end
			i = 0
		end
	end

	#check guest match with given word or not
	def check_matching
		case @match
		when 1
			p "________________________"

		when 2
			p "           |
			              |	
						  |
						  |
			  ____________|_____________"

		when 3
			p "			  |-------
						  |	
						  |
						  |
			  ____________|_____________"

		when 4
			p "			  |-------O
						  |		  |
						  |
						  |
			  ____________|_____________"

		when 5
			p "			  |-------O
						  |	   ---|
						  |
						  |
			  ____________|_____________"

		when 6
			p "			  |-------O
						  |	   ---|---
						  |
						  |
			  ____________|_____________"

		when 7
			p "			  |-------O
						  |	   ---|---
						  |      _|_
						  |	   _|
			  ____________|_____________"

		when 8
			p "			  |-------O
						  |	   ---|---
						  |      _|_
						  |	   _|   |_
			  ____________|_____________"																																									
				
		end
	end
	#show the result(whenever ringth or wrong)
	def show_result
		@result = []
		(@word.length).times do
			@result << "_"
		end
		@result.join(" ")
	end
end

h = Hangman.new("gamey")