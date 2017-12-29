#!/usr/local/bin/ruby

#------------------------------------------- picking adventure and team ----------------------------------------

puts "** Welcome to Meow Meow Land, a place of unforgettable rpg-like adventures and ham **"
puts "Enter your name to start"
name = gets.chomp.capitalize
puts "#{name}, it's time for you to pick your adventure. Type:"
puts "P > for jurassic quest"
puts "F > for sneaky fishing"


while true do
  adventure = gets.chomp.capitalize
  if adventure == "P" then
    puts "Let's go back in time to the jurassic times!"
    sleep(2)
    break
  elsif adventure == "F"  then
    puts "this quest is currently not available, press P to play jurassic quest instead"
    adventure2 = gets.chomp.capitalize
    if adventure2 == "P"  then
      puts "Let's go back in time to the jurassic times!"
      sleep(2)
      break
    else
      puts "If you want to leave the game press enter"
      gets
      exit(0)
    end
  else
    puts "Please put a valid command (P or F)"
  end
end

puts "Welcome to the jurassic period."
sleep(2)
puts "Time of Plesiosaurs, Diplodocs, Triceratops and many other raptors."
sleep(2)
puts "Among dinosaurs everyone knows from Jurarric World lives one particularily dangerous beast - Cotaurous-Rex."
sleep(3)
puts "It has 2ft long claws, 100 sharp teeth, is 20ft tall and when it wiggles the whole dinosaur island is shaking."
sleep(3)
puts "Cotaurous-Rex is destroying dinosaur world by eating whole food and using whole forrests to scratch its back."
sleep(3)
puts " --------------------------------------------"
puts "#{name}, you need to pick a team of warriors and save the dinosaurs!"
sleep(2)
puts "You can choose 2 charactes from: Pope, Walking fridge, Virus, and Junior Developer"
puts "Each character has 3 skills: strength, intelligence, and luck, for which it has between 0 and 20 points."
puts "Each character has 'health' - the starting value is 20."
puts "Pick your team wisely as your choice will affect your mission"
puts " --------------------------------------------"
puts "Enter:"
puts "P > to pick the Pope"
puts "W > to pick the Walking Fridge"
puts "V > to pick the Virus"
puts "J > to pick the Junior Developer"
puts "Pick the first character"
while true do
  first_character = gets.chomp.capitalize
  if first_character == "P" || first_character  == "W" || first_character  == "V" || first_character  == "J"  then
    break
  else
    puts "Please put a valid character (P, W, V or J)"
  end
end
puts "Pick the second character"
while true do
  second_character = gets.chomp.capitalize
  if second_character == "P" || second_character  == "W" || second_character  == "V" || second_character  == "J"  then
    break
  else
    puts "Please put a valid character (P, W, V or J)"
  end
end

#------------------------------------------- definitions and methods for characters ----------------------------------------
class Character
  def initialize(name, strength, intelligence, luck, health)
    @name = name
    @strength = strength
    @intelligence = intelligence
    @luck = luck
  end

  #------------------ methods that will be available to characters -----------------------
  def name
    return @name
  end

  def strength
    return @strength
  end

  def intelligence
    return @intelligence
  end

  def luck
    return @luck
  end

  def health
    return @health
  end

  def change_strength(change)
    @strength += change
  end
end
#------------------------------------------- hash of objects ----------------------------------------
characters = {
  "P" => Character.new("Pope", 0, 18, 2, 20),
  "W" => Character.new("Walking fridge", 2, 2, 15, 20),
  "V" => Character.new("Virus", 10, 7, 1, 20),
  "J" => Character.new("Junior Developer", 4, 5, 7, 20),
}
#------------------------------------------- our team :) ----------------------------------------
team = [characters[first_character], characters[second_character]] #array of objects
#------------------------------------------- intro ----------------------------------------
puts "#{name}, #{team[0].name} and #{team[1].name}... So be it. You shall be the Fellowship of the Dinosaurs!"
#------------------------------------------- quest ----------------------------------------
sleep(1)
puts " ------------------------------- FIRST CHAPTER ------------------------------- "
sleep(1)
puts "You're walking thought a tropical jungle, looking for Cotaurous-Rex."
puts "You're very thirsty, looking for fresh water."
puts "Unfortunately from Cotaurous-Rex wiggles that causes casual earthqakes the ground water is all dirty and you don't want to risk your health"
if team.any?{|x| x.name == "Walking fridge"} then
  puts "Lucily you have a walking fridge, so you casually pick up a coke and enjoy the taste."
else
  puts "You should have picked the walking fridge..."
  puts "Because of dehydration all your characters lose -2 to strength"
  team[0].change_strength(-2)
  team[1].change_strength(-2)
end

sleep(1)
puts " ------------------------------- SECOND CHAPTER ------------------------------- "
sleep(1)
puts "You see a group of dangerously looking dinosaurs, pick one of your characters to fight it"
puts "type #{first_character} if you want #{team[0].name} to fight or #{second_character} if you want #{team[1].name} to fight."
while true do
  fighter_second_chapter = gets.chomp.capitalize
  if fighter_second_chapter == first_character || fighter_second_chapter  == second_character then
    break
  else
    puts "Please put a valid character (#{first_character} or #{second_character})"
  end
end
puts "hehe"
