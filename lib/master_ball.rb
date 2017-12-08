require 'set'

class MasterBall

  # comment
  def run
    @position_x = 0
    @position_y = 0
    @pokemon_map = Set.new []
    input = gets.chomp
    inputValidation(input)
  end

  # private methods are grouped near the end
  private
  
  # comment
  def inputValidation(input) 
    if input.nil? || input.empty?
      puts @pokemon_map.size
    else
      puts @position_x
      puts @position_y     
      puts @pokemon_map.size
      # @pokemon_map.add(input)
    end
  end
end
