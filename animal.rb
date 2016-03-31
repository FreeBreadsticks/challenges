class Animal
  def eat
      puts "om nom nom nom"
  end
end

class Dog < Animal
  def bark
    puts "woof"
  end

end

class Cat < Animal
  def meow
    puts "meow"
  end
end

class Duck < Animal
  def quack
    puts "quack"
  end
end

class GoldenRetriever < Dog
  def fetch
    puts "brings back ball"
  end
end

class Poodle < Dog

end

#build animal
animal = Animal.new

dog = Dog.new

cat = Cat.new

duck = Duck.new

gr = GoldenRetriever.new

p = Poodle.new

puts gr.is_a?(Cat)