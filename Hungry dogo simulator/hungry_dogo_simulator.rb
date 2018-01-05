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
      puts "#{@name} haven't had any food lately - so now it has #{value} less food in the belly..."
      puts "feed your #{@name}"
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
food_choice = gets.chomp.to_f

doge = Dogo.new(name_choice, age_choice, food_choice)


doge.say_hi
puts "--------------"
doge.puts_age
puts "--------------"
doge.how_much_food_in_belly
puts "--------------"
doge.change_feed_dogo(-2)
puts "Do you want to feed your dogo?"
puts "Type number of dog sticks you want to give your dogo"
decision_on_food = gets.chomp
while true
  if decision_on_food.count("a-zA-Z!@#$%^&*()_+") > 0 then
    puts "Put a number"
    decision_on_food = gets.chomp
  else
    doge.change_feed_dogo(decision_on_food.to_i)
    break
  end
end
doge.how_much_food_in_belly
