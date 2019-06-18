require 'colorize'
require_relative 'cursor'
require_relative 'board'
require_relative './pieces/bishop'

class Display
  attr_reader :cursor, :board

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render 
    @board.rows.each do |row|
      row.each do |col| 
        #print col.val
        print col.val
        print " | "
      end
      puts "\n"
      puts "-------------------------------"
    end
  end
end

p display_1 = Display.new(Board.new)
p display_1.render 
