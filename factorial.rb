def factorial(n)
  return n != 1 ? n * factorial(n-1) : 1
end

n = 40
puts factorial(n)