#!/usr/bin/env ruby

require_relative('lib/board')
require_relative('lib/queen')

@board = Board.new

8.times do
  x = rand(8)
  y = rand(8)
  @board.place_queen(x,y)
end

@board.display
