def factorial(n)
  result = 1
  for i in 1..n do
    result *= i
  end
  result
end

def factorial(n)
  return 1 if n < 2
  factorial(n-1) * n
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
