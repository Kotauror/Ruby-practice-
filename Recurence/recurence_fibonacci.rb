arr = [0, 1]
while arr.length < 21 do
  arr.push(arr.last(2).reduce(:+))
end
puts arr


def fibonacci(n)
  x = 0
  z = 1
  n.times do |i|
    z = (x + z)
    x = (z - x)
    puts "#{z} = fibonacci(#{i+1})"
  end
end



def finona(n)
  return 1 if n<2
  finona(n-1) + finona(n-2)
end
#finona(n) == finona(n-1) + finona(n-2)
