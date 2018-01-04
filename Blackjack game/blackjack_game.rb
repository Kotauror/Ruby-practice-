@hash_of_cards = {
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9,
  "ten" => 10,
  "jack" => 10,
  "queen" => 10,
  "king" => 10,
  "ace" => 11
}

def random_card
  cards = ["two", "three", "four", "five", "six", "seven",
           "eight", "nine", "ten",
           "jack", "queen", "king", "ace"]

  cards[rand(13)]
end

@hand = [] # players hand - here go random cards

def move
  while true do
    puts "Do you want to 'hit' or 'stick'?"
    choice = gets.chomp.downcase
    if choice == "hit" || choice == "stick" then
      return choice
    end
  end
end

def score
  sum = 0
  @hand.each { |card|
    sum += @hash_of_cards[card].to_i
  }
  return sum.to_i
end

def run_game
  choice = move() # we take choice from move function

  while choice == "hit" do
    @hand.push(random_card())
    puts "Score so far: #{score}"
    choice = move()
  end

  if choice == "stick" then
    if score <= 21 then
      puts "You scored: #{score}"
    else
      puts "You busted with #{score}"
    end
  end
end

run_game 
