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
  def initialize(options = {})
    super(options[:first_name])
  end

  def learn
    puts "I get it!"
  end


end


class Instructor < Person
  def initialize(options = {})
    super(options[:first_name])
  end

  def teach
    puts "Everything in Ruby is an Object"
  end

end
