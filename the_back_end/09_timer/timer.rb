class Timer
	attr_accessor :seconds
	attr_accessor :time_string
	
	def initialize
		@seconds = 0 	
	end

	def padding(num)
		num.to_s.rjust(2, '0')
	end

	def time_string
		hour = @seconds / 3600
		minute = (@seconds / 60) - (hour * 60)
		second = @seconds - (minute * 60) - (hour * 3600) 
		@time_string = "#{padding(hour)}:#{padding(minute)}:#{padding(second)}"
	end
end