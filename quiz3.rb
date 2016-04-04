class Animal
  attr_accessor :type, :color

  def initialize(type, color)
    @type = type
    @color = color
  end

  def output_animal
    if @type == "dog"
      puts "Woof! The animal is a #{@color} #{@type}"
    elsif @type == "cat"
      puts "Meow! The animal is a #{@color} #{@type}"
    else
      puts "The animal is a #{@color} #{@type}"
    end
  end
end

animal = Animal.new("dog", "brown")
animal2 = Animal.new("cat", "gray")
animal3 = Animal.new("fish", "gold")

animal.output_animal
animal2.output_animal
animal3.output_animal
