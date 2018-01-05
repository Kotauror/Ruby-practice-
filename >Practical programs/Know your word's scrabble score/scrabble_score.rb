puts "Type a word to know its Scrabble score"
word = gets.chomp.upcase
counter = 0

values = {
  ["blank tile"] => 0,
  ["E", "A", "I", "O", "N", "R", "T", "L", "S", "U"] => 1,
  ["D", "G"] => 2,
  ["B", "C", "M", "P"] => 3,
  ["F", "H", "V", "W", "Y"] => 4,
  ["K"] => 5,
  ["J", "X"] => 8,
  ["Q", "Z"] => 10
}
word.chars { |character|
  values.each { |key, value|
  if key.include?(character) then
    counter += value
  end
  }
}
puts counter
