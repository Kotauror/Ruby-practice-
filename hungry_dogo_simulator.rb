class Dogo

  def initialize(name_choice, age, food_in_belly)
    @name = name_choice
    @age = age
    @food_in_belly = food_in_belly
  end

  def say_hi
    puts "Woof woof, my name is #{@name}."
  end

  def puts_age
    puts "#{@name} is #{@age} years old"
  end

  def how_much_food_in_belly
    puts "#{@name} has #{@food_in_belly} food in the belly"
  end

  def change_feed_dogo(value) #we pass an argument from outside the class
    @food_in_belly += value
    if value > 0 then
      puts "#{@name} got some food - it has +#{value} more food in the belly"
    else
      puts "#{@name} haven't had any food lately - now it has #{value} less food in the belly"
    end
    if @food_in_belly < 1 then
      puts "You killed your Dogo"
      exit
    end
  end

end

puts "Friendly dogo - hungry dogo simulator"
puts ">> What name do you want for your dogo?"
name_choice = gets.chomp
puts ">> How old should be your dogo?"
age_choice = gets.chomp
puts ">> How much food do you want your dogo to have in its belly?"
sleep(1)
puts "... yeah, creepy question..."
food_choice = gets.chomp.to_f

doge = Dogo.new(name_choice, age_choice, food_choice)


doge.say_hi
doge.puts_age
doge.how_much_food_in_belly
sleep(3)
doge.change_feed_dogo(-2)
doge.how_much_food_in_belly
