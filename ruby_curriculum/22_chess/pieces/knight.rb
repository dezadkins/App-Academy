require_relative 'piece'
require 'colorize'

class Knight < Piece 
  attr_reader :val

  def initialize
    @val = " N "
  end
end