class TicTacToe
    def initialize(board = nil)
        @board = board || Array.new(9, " ")
    end
    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]
    ]
    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
    def input_to_index(input)
        input.to_i - 1
    end
    def move(index, token)
        @board[index] = token
    end
    def position_taken?(index)
        if @board[index] == "X" || @board[index] =="O"
            true
        else
            false
        end
    end
    def valid_move?(index)
        if @board[index] == " "
            true
        end
    end
    def turn_count
        counter = 0
        @board.each do |turn|
            if turn == "X" || turn == "O"
                counter += 1
            end
        end
        counter
    end
    def current_player
        if turn_count % 2 == 1
            "O"
        elsif turn_count % 2 == 0
            "X"
        end
    end
    def turn
        puts "Pick a number from 1 to 9"
        user_input = gets.strip
        user_index = input_to_index(user_input)
    end
end