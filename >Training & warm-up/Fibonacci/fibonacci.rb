arr = [0, 1]
while arr.length < 21 do
  arr.push(arr.last(2).reduce(:+))
end
puts arr
