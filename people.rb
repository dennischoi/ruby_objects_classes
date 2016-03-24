class Person
  attr_accessor :first_name
  def initialize(first_name)
    @first_name = first_name
  end

  def greet
    puts "Hi, my name is #{first_name}"
  end

end


class Student < Person

  def learn
    puts "I get it!"
  end

end


class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end

# Make sure irb is reset incase of variable and class conflict (ie. same names)

chris = Instructor.new("Chris")
puts chris.greet

christina = Student.new("Christina")
puts christina.greet
