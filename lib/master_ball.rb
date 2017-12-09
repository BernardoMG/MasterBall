require 'set'

class MasterBall

  # comment
  def run
    input = gets.chomp
    init_map(input)
  end

  # comment
  def init_map(input)
    @position_x = 0
    @position_y = 0
    @pokemon_map = Set.new []
    @pokemon_map << ("#{@position_x};#{@position_y}")   
    input_validation(input) 
  end

  # private methods are grouped near the end
  private
  
  # comment
  def input_validation(input) 
    if input.nil? || input.empty?
      puts @pokemon_map.size
    else
      input.split('').each do |c| 
        update_map(c)
      end
      puts @pokemon_map.size
    end
  end

  # comment
  def update_map(move)
    case move
    when "N"
      @position_y += 1
      @pokemon_map << ("#{@position_x};#{@position_y}")
    when "S"
      @position_y -= 1
      @pokemon_map << ("#{@position_x};#{@position_y}")
    when "E"
      @position_x += 1
      @pokemon_map << ("#{@position_x};#{@position_y}")
    when "O"
      @position_x -= 1
      @pokemon_map << ("#{@position_x};#{@position_y}")   
    else  
    end
  end
end