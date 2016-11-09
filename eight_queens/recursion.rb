#!/usr/bin/env ruby

require_relative('lib/board')
require_relative('lib/queen')

def solve_queens_problem
  place_queen_in_column(0)
end

def place_queen_in_column(column)
  @board.rows.times do |row|
    if @board.safe_position?(column, row)
      @board.place_queen(column, row)
      if column == @board.ending_column
        @solution_found = true
        return
      else
        place_queen_in_column(column+1)
        return if @solution_found
      end
      @board.remove_queen(column, row)
    else
      next
    end
  end
end

@solution_found = false
@board = Board.new

solve_queens_problem

if @solution_found
  puts "\nSolution board:"
  @board.display
else
  puts "\nNo solutions found."
end
