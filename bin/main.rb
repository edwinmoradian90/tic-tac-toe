#!/usr/bin/env ruby
require '../lib/classes.rb'
class Tic
  WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8], 
        [0, 3, 6], [1, 4, 7], [2, 5, 8], 
        [0, 4, 8], [2, 4, 6]] 

  def initialize
    @board = Board.new
    @players = Players.new
  end
  puts @board.board_num.inspect
end

