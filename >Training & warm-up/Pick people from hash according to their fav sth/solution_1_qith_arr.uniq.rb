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

arr = []
people.each { |hash|
  arr.push(hash[category])
}
arr = arr.uniq
# convert array into hash, where each subcategory is a key, and an empty array is a value
result_hash = Hash[arr.collect { |subcategory| [subcategory, []] } ]

people.each { |hash|
  result_hash[hash[category] ].push(hash["name"])
}

puts result_hash.to_a
