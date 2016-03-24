
class Plateau
  attr_accessor :x_min, :y_min, :x_max, :y_max
  def initialize(x_min, y_min, x_max, y_max)
    @x_min = x_min
    @y_min = y_min
    @x_max = x_max
    @y_max = y_max
  end

  def plateau_size
    puts "The Plateau has a size of ()#{x_min}, #{y_min}) by (#{x_max}, #{y_max})."
  end
end
