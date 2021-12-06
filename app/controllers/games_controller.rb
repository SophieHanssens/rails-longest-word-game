class GamesController < ApplicationController
  def new
   @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end
  def score
  end
end



# def generate_grid(grid_size)
#   # TODO: generate random grid of letters
#   Array.new(grid_size) { ('A'..'Z').to_a.sample }
# end
