
class Rover
  def initialize(x = 0, y = 0, direction = n)
    @x_coordinate = x
    @y_coordinate = y
    @direction = n
  end

  def read_instructions
    puts "Give me some instructions to move the Rover."

    @input = gets.strip
      @input.each_char do |i|
        case i
          when 'l'
          when 'r'
          when 'm'
            move
            break
        end
      end


    # read the input
  end

  def turn
    # 90 degree turn based on input
  end

  def move
    case @direction
      when "n"
        y += 1
      when "s"
        y -= 1
      when "e"
        x += 1
      when "w"
        x -= 1
    end
  end
    #move 1 space in direction

end
