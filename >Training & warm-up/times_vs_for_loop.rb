def factorial(n)
  result = 1
  for i in 1..n do
    result *= i
  end
  result
end


def factoriale(n)
  result = 1
  n.times do |i|
    result *= i + 1
  end
  result
end

factorial(5)
factoriale(5)
