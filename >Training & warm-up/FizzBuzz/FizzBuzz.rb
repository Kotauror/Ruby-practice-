arr = [*1..20]
arr = arr.map { |x|
  if x % 3 == 0 && x % 5 == 0 then "FizzBuzz"
  elsif x % 3 == 0 then "Fizz"
  elsif x % 5 == 0 then "Buzz"
  else x
  end
}
puts arr
