#!/usr/bin/env ruby
class Board
  def initialize
    @board = [" "," "," "," "," "," "," "," "," "," "," "]
    @board_num = []
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def count_board
    @board.length.times do |i|
        if @board[i] == "X"
            board_num << i
        else
            board_num << nil
        end
    end
   end 

  def has_winner(board_num)
    WIN.any? {|line| (line - board_num) == [] }
  end
end

class Players
  def initialize
    @players = ['X', 'O']
    @input = gets.to_i 
  end
end