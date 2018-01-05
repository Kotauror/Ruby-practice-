class String
  def say_hi
    "Hi there!"
  end

  def say_no
      "nooo"
  end

  def shoutify
    return "#{self.upcase}!"
  end
end

my_object = "A string!"
my_object.say_no



# przez to, że class nazywa się String, działa dla wszystkich obiektow,
# ktore sa stringami. Jesli wywołamy metody na obiektach-stringach - zadzialaja.
# na innych - nie. Jeśli zmienimy nazwe klasy, nie bedzie dzialac dla stringow.

class Array
  def count_average
    d = self.length
    return self.reduce(:+) / d
  end
end

[1,2,3].count_average
