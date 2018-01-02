puts "Enter a number of groups"
number_of_groups = gets.chomp.to_i
arr_of_names = []
while true do
  puts "Enter a name"
  name = gets.chomp
  if name == "stop" then
    break
  end
  arr_of_names.push(name)
end

array_of_arrays = arr_of_names.each_slice(number_of_groups) 

while true do
  puts "Enter the number of a group to print out"
  choice = gets.chomp.to_i
  if choice == "stop" then
    break
  end
  choice -= 1
  puts (array_of_arrays.map { |row| row[choice] })
end
