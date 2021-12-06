class GamesController < ApplicationController
  def new
   @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end
  def score
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
    # raise

    # 1) The word can’t be built out of the original grid
        # Transformer le mot encodé en lettres séparées
        @words = params[:noun].split("")
        # Comparer chaque lettre du mot avec chaque lettre de la grille
        @words.each do |word|
          if @letters.include?(word)
            def english_word?(word)
              response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
              json = JSON.parse(response.read)
              return json['found']
            end
          end
        end
    # 2) The word is valid according to the grid, but is not a valid English word
        # Utiliser l'API
    # 3) The word is valid according to the grid and is an English word

  end
end



# def generate_grid(grid_size)
#   # TODO: generate random grid of letters
#   Array.new(grid_size) { ('A'..'Z').to_a.sample }
# end
