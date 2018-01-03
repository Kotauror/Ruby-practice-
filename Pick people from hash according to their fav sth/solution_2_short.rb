people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

puts "Enter category to group people by"
category = gets.chomp

result_hash = Hash.new

people.each {|hash|
  if result_hash.has_key?(hash[category]) then
    result_hash[hash[category]].push(hash["name"])
  else
    result_hash[hash[category]] = [hash["name"]]
  end
}

puts result_hash.to_a
