#!/usr/bin/env ruby
require '../lib/classes.rb'

WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8], 
       [0, 3, 6], [1, 4, 7], [2, 5, 8], 
       [0, 4, 8], [2, 4, 6]] 

$count = 0
class Tic

  def initialize
    @board = Board.new
    @player = Player.new
    @choice = nil
  end
 
  def run
    puts "Welcome to tic tac toe in Ruby"
    while $count < 9
      puts "Pick a number between 1-9: "
      @player.switch
      @board.add_to_board(@player.num_choice, @player.player)
      @board.display_board
      @board.count_board(@player.player)
      if @board.has_winner
        puts "\nYou've won player #{@player.player}\n"
        break
      end
      $count += 1
    end
  end
end

tic = Tic.new
tic.run


