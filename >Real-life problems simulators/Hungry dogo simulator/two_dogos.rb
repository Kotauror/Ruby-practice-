class Dog

  def initialize(color)
    @color = color
  end

  def bark
    return "Woof"
  end

  def color
    return @color
  end

  def observe
    return "You see a #{color()} dog"
  end

end

fido = Dog.new("red)")
chelsea = Dog.new("white")

chelsea.observe
