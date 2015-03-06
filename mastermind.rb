class Mastermind
	COLORS = ["R","B","W","Y","G","P","N"]
	def initialize
		puts "Welcome to Mastermind Game:"
		start_game
	end

	def start_game
		@computer = COLORS.sample(4)
		play
	end
	def guees_game
		puts "Please choose your colors:"
		STDOUT.flush
		guess = gets.chomp
	end

	def play
		flag = false
		12.times do |i|
			puts "This is the #{i+1} turn"
			current_guess = guees_game
			p check_position(current_guess, @computer)
			if @count_exact == 4
				puts "You won"
				flag = true
				break
			else
				puts "#{@count_exact} Exact"
				puts "#{@count_near} Near"
				puts "#{@notmatch} Not match"
			end
		end
		if flag
			ask_to_play_again
		else
			puts "You lost"	
		end
						
	end

	def check_position(guess, answer)
		@count_near = 0
		@count_exact = 0
		@notmatch = 0
		guess.split('').each_with_index do |color, position|
		  	if (color == answer[position])
		  		@count_exact += 1
		  		#p count_exact
		  	elsif (color != answer[position] && answer.include?(color))
		  		@count_near += 1
		  		#p count_near
		  	else
		  		@notmatch += 1
		  	end
		end	
		return @count_exact,@count_near,@notmatch 			
	end

	def ask_to_play_again
		p "Do you want to play again?(Y/n)"
		STDOUT.flush
		response = gets.chomp.downcase
		case response
		when "y"   then initialize
		when "yes" then initialize
		when "n"   then
		when "no"  then
		else ask_to_play_again
		end		
	end

end

Mastermind.new