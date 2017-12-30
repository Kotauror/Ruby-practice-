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
    puts "this quest is currently not available, press P to play jurassic quest instead."
    adventure2 = gets.chomp.capitalize
    if adventure2 == "P"  then
      puts "Let's go back in time to the jurassic times!"
      sleep(2)
      break
    else
      puts "If you want to leave the game press enter."
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
puts "You can choose 2 charactes from: Lawyer, Walking fridge, Virus, and Junior Developer."
puts "Each character has 3 skills: strength, intelligence, and luck, for which it has between 0 and 20 points."
puts "Each character has 'health' - the starting value is 20."
puts "Pick your team wisely as your choice will affect your mission."
puts " --------------------------------------------"
sleep(10)
puts "Enter:"
puts "L > to pick the Lawyer"
puts "W > to pick the Walking Fridge"
puts "V > to pick the Virus"
puts "J > to pick the Junior Developer"
puts "Pick the first character"
while true do
  first_character = gets.chomp.capitalize
  if first_character == "L" || first_character  == "W" || first_character  == "V" || first_character  == "J"  then
    break
  else
    puts "Please put a valid character (L, W, V or J)"
  end
end
puts "Pick the second character"
while true do
  second_character = gets.chomp.capitalize
  if second_character == "L" || second_character  == "W" || second_character  == "V" || second_character  == "J"  then
    break
  else
    puts "Please put a valid character (L, W, V or J)"
  end
end

#------------------------------------------- definitions and methods for characters ----------------------------------------
class Character
  def initialize(name, strength, intelligence, luck, health)
    @name = name
    @strength = strength
    @intelligence = intelligence
    @luck = luck
    @health = health
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

  def change_health(change)
    @health += change
  end

end

class Team
  def initialize(characters)
    @characters = characters #under characters theres a array of characters (2) because we gave 2 charactes in Team.new
  end

  def show_teammates
    @characters.each{|x| # x is one of the Characters, this is why we can use the functions defined in class Characters
      puts "#{x.name}: strength: #{x.strength}, intelligence: #{x.intelligence}, luck: #{x.luck}, health: #{x.health}"
    }
  end

  def first_character_name
    return @characters[0].name
  end

  def first_character_strength
    return @characters[0].strength
  end

  def second_character_name
    return @characters[1].name
  end

  def second_character_strength
    return @characters[1].strength
  end

  def has_character(character_name)
    @characters.any?{|x| x.name == character_name} #any returns true
  end

  def change_strength(number)
    @characters.each{|x| x.change_strength(number)}
  end

  def change_health(number)
    @characters.each{|x| x.change_health(number)}
  end

  def remove_character(character)
    @characters.delete(character)
  end

  def remove_character_at(index)
    @characters.delete_at(index)
  end

  def get_character(letter)
    @characters.each{|x|
      if x.name[0] == letter then
        return x #we pick one characters from aray - the one who's name starts with the letter passed
      end
    }
  end

  def team_size
    return @characters.length
  end

end
#------------------------------------------- Monsters ----------------------------------------
class Monster
  def initialize(name, intelligence, strength, luck, health)
    @name = name
    @intelligence = intelligence
    @strength = strength
    @luck = luck
    @health = health
  end

  def name
    return @name
  end

  def strength
    return @strength
  end

  def luck
    return @luck
  end

  def change_health(value)
    @health += value
  end

  def change_strength(value)
    @strength += value
  end
end

#------------------------------------------- hash of objects ----------------------------------------
characters = {
  "L" => Character.new("Lawyer", 2, 18, 11, 20),
  "W" => Character.new("Walking fridge", 2, 2, 15, 20),
  "V" => Character.new("Virus", 10, 7, 1, 20),
  "J" => Character.new("Junior Developer", 4, 5, 7, 20),
}
#------------------------------------------- our team :) ----------------------------------------
team = Team.new([characters[first_character], characters[second_character]])
#------------------------------------------- team of monsters ----------------------------------------
wild_wildcat = Monster.new("WildWildCat", 15, 4, 10, 20)
cotaurous_rex = Monster.new("Cotaurous-Rex", 25, 20, 17, 20)
#------------------------------------------- our team - introduction:) ----------------------------------------
puts "#{name}, #{team.first_character_name} and #{team.second_character_name}... So be it. You shall be the Fellowship of the Dinosaurs!"
team.show_teammates
#------------------------------------------- quest ----------------------------------------
sleep(1)

puts " ------------------------------- FIRST CHAPTER ------------------------------- "
sleep(1)
puts "You're walking thought a tropical jungle, looking for Cotaurous-Rex."
puts "You're very thirsty, in need of fresh water."
puts "Because of Cotaurous-Rex's wiggles, that cause casual earthqakes, the ground water is all dirty and you don't want to risk your health."
if team.has_character("Walking fridge") then #if true
  puts ">>> Luckily you have a walking fridge, so you casually pick up a coke and enjoy the taste."
else #if false
  puts ">>> You should have picked the walking fridge to get some nice cold coke..."
  puts ">>> Because of dehydration all your characters lose -2 to health."
  team.change_health(-2)
end
sleep(8)
puts "Press enter to move to the second chapter."
gets
puts " ------------------------------- SECOND CHAPTER ------------------------------- "
sleep(1)
puts "You see a dangerously looking wild Wildcat, pick one of your characters to fight it."
puts "Your team consists of:"
team.show_teammates
puts "type #{first_character} if you want #{team.first_character_name} to fight or #{second_character} if you want #{team.second_character_name} to fight."
while true do
  fighter_second_chapter = gets.chomp.capitalize
  if fighter_second_chapter == first_character || fighter_second_chapter  == second_character then
    break
  else
    puts "Please put a valid character (#{first_character} or #{second_character})."
  end
end

fighter2ch = team.get_character(fighter_second_chapter)
sleep(4)
puts "You've picked #{fighter2ch.name}."
sleep(3)
puts "Both #{fighter2ch.name} and wild Wildcat decided not to dirty their hands and solve the fight by rolling dices."
puts "The result of dice roll will be added to the luck of character."
puts "Your character has #{fighter2ch.luck} luck and the wild Wildcat has #{wild_wildcat.luck} luck."
puts "The one with smaller number must leave the dinosaur island and never come back. In case of a draw no one leaves."
puts "Press enter to roll the dice."
sleep(6)
gets
our_roll = rand(5)+1
our_sum = our_roll + fighter2ch.luck
their_roll = rand(5)+1
their_sum = their_roll + wild_wildcat.luck
puts ">>> #{fighter2ch.name}'s dice score is #{our_roll}. Your final score is #{our_sum}."
puts ">>> #{wild_wildcat.name}'s dice score is #{their_roll}. Cat's final score is #{their_sum}."
sleep(3)
if our_sum < their_sum then
  puts "#{fighter2ch.name} must leave the dinosaur island. He will no longer be a part of your team."
  team.remove_character(fighter2ch)
  puts "Your team consists of only one warrior:"
  team.show_teammates
  puts "Press enter to move to the next chapter."
elsif our_sum > their_sum then
  puts "wild Wildcat needs to leave... let him say bye to his family..."
  puts "Press enter to move to the next chapter."
else
  puts "No one needs to leave!"
  puts "Press enter to move to the next chapter."
end

gets
puts " ------------------------------- THIRD CHAPTER ------------------------------- "

def rolling_and_result(team)
  gets
  roll = rand(5)+1
  if roll > 3 then
    puts "You've saved the dinosaurs!"
    exit(0)
  else
    team.remove_character_at(0)
    puts "You lost both your warriors in the third chapter. You didn't save dinosaurs. Wow... Impressive."
  end
end

while team.team_size>0 do
  if team.team_size == 1 then
    puts "You're left only with #{team.first_character_name}"
    puts "Tired and depressed."
    puts "Seating on a beach and thinking about the future..."
    puts "All of a sudden you see Cotaurous-Rex!!!"
    case team.first_character_name
    when "Virus"
      puts "Thankfully your warrior is Virus and you can easily kill the Cat."
      puts "The problem with virus is that it can easily affect both you and Rex."
      puts "But you don't really have a choice and put Virus to fight."
      puts
      puts "Let's roll prehistoric dices!"
      puts "If virus's score will be smaller than 3, then virus will affect you, not Rex."
      puts "In other cases you win!"
      puts "Click enter to roll a dice!"
    when "Lawyer"
      puts "Thankfully your warrior is the Lawyer and you can easily tame the Cat."
      puts "You just need to ask the lawyer take a random law-school book and read any chapter."
      puts "The lawyer is unpleased and wants money for its service."
      puts
      puts "Roll a dice to learn if you have enough money."
      puts "If you roll 3 or less, the lawyer will leave you forever and the dinosaurs will be killed."
      puts "Click enter to roll a dice!"
    when "Walking fridge"
      puts "Thankfully your warrior is the Walking fridge and you can easily tame the Cat."
      puts "The fridge just needs to have enough cat food to distract the cat, so you can kill him."
      puts
      puts "Roll a dice to learn if you have enough food."
      puts "If you roll 3 or less, you won't distract the Cat."
      puts "Click enter to roll a dice!"
    when "Junior Developer"
      puts "Thankfully your warrior is the Junior Developer and you can easily fight the Cat."
      puts "Your Junior only needs to reprogram its smartphone to make it a huge laser pointer."
      puts
      puts "Roll a dice to learn if the Developer is good enough."
      puts "If you roll 3 or less, you won't distract the Cat."
      puts "Click enter to roll a dice!"
    end
    rolling_and_result(team)
  else
    puts "You still have two warriors!"
    puts
    team.show_teammates
    puts
    puts "Killing the Cotaurous Rex will be a child game to play."
    puts "In the final fight both your warriors and the Cotaurous will roll one dice and multiply their strength by their score."
    puts "Shall Cotaurous roll the smallest number - it's killed."
    puts "Otherwise - one of your character dies."
    puts "Click enter to roll a dice!"
    gets
    char1_roll = rand(5) + 1
    char1_sum = char1_roll * team.first_character_strength
    puts "Final score of #{team.first_character_name} is #{char1_sum}."
    gets
    char2_roll = rand(5) + 1
    char2_sum = char2_roll * team.second_character_strength
    puts "Final score of #{team.second_character_name} is #{char2_sum}."
    cat_roll = rand(5) + 1
    cat_sum = cat_roll * cotaurous_rex.strength
    puts "Final score of Cotaurous Rex is #{cat_sum}."
    sleep(10)
    if char1_sum + char2_sum > cat_sum then
      puts "You've saved the dinosaurs! - Cotaurous Rex lost."
      break
    else
      if char1_sum >= char2_sum  then
        puts "#{team.second_character_name} died."
        puts "----------------------------------"
        team.remove_character_at(1)
      else
        puts "#{team.first_character_name} died."
        puts "----------------------------------"
        team.remove_character_at(0)
      end
    end
  end
end

puts "THE END"
puts "HOPE YOU ENJOYED IT :) "
