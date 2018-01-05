puts "Enter a number of groups"
number_of_groups = gets.chomp.to_i
arr_of_names =[]
while true do
  puts "Enter a name"
  name = gets.chomp
  if name == "stop" then
    break
  end
  arr_of_names.push(name)
end

while true do
  puts "From which group do you want to print the names?"
  choice = gets.chomp.to_i
  if choice == "stop" then
    break
  end
  choice -= 1
  puts arr_of_names.select.with_index{|name, index|
    if index % number_of_groups == choice then 
      true # selects those names
    else
      false
    end
  }
end
