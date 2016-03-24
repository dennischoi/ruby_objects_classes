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
puts chris.teach

christina = Student.new("Christina")
puts christina.greet
puts christina.learn

# Chris cant access class from student because it doesn't inherit its attributes/method as it did greet (inherited from Parent class)
# Same thing in Christina's case, can only inherit methods from class it is connected to
