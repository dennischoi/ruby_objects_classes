
class Rover
attr_reader :input

DIRECTIONS = ["n", "e", "s", "w"]


  def initialize(x = 0, y = 0, direction = "n")
    @x_coordinate = x
    @y_coordinate = y
    @direction = direction
  end

  def read_instructions
    puts "Give me some instructions to move the Rover."

    @input = gets.strip
      @input.each_char do |i|
        case i
          when "l"
            @direction = DIRECTIONS[DIRECTIONS.find_index(@direction)-1]
            # Find_index method here is used to identify the place in the array that the direction is head... -1 is used to make sure it continues to go down the array, otherwise left. When it hits the first index of the array it goes back to the end of the array

          when "r"
            @direction = DIRECTIONS[DIRECTIONS.find_index(@direction)-1)%4]

            # When reaching the last point of the array of DIRECTIONS constant it will return to 0 because the modulo is used to make sure that when it hits 4 it will go down to 0
          when "m"
            move
          when "exit"
            break
        end
      end


    # read the input
  end

  def move
    case @direction
      when "n"
        @y_coordinate += 1
      when "s"
        @y_coordinate -= 1
      when "e"
        @x_coordinate += 1
      when "w"
        @x_coordinate -= 1
    end
  end

    #move 1 space in direction

    def to_s
  "#{@x_coordinate}, #{@y_coordinate} -> #{@direction}"
    end
end


red = Rover.new

while true
    red.read_instructions
    puts red

    if red.input == "exit"
        exit
    end
  end
