class TicTacToe
	attr_accessor :grid, :turn

	@@win = [[1,2,3], [1,4,7], [4,5,6], [7,8,9],
			 [2,5,8], [3,6,9], [3,7,5], [1,5,9]]
	def initialize(turn, grid)
		@turn = turn
		@grid = grid
		@player1 = TicTacToe.new("X")
		@player2 = TicTacToe.new("O")
	end

	def create_grid
		@grid = {
            '1' => ' ',
            '2' => ' ',
            '3' => ' ',
            '4' => ' ',
            '5' => ' ',
            '6' => ' ',
            '7' => ' ',
            '8' => ' ',
            '9' => ' '
        }
        
		puts (1..3).inject("") { |line, num| line + @grid[num] + " | " }
		puts (4..6).inject("") { |line, num| line + @grid[num] + " | " }
		puts (7..9).inject("") { |line, num| line + @grid[num] + " | " }
	end
end

t = TicTacToe.new()
t.create_grid