def factorial(n, val=0) # tail-recursion stack overflow >50000
  if n == 0
    val
  else
    factorial(n-1, val+n)
  end
end

def factorial(n) #loop
  sum = 0
  while n > 0
    sum += n
    n -= 1
  end
  sum
end

factorial(5)

def fibonacci(n, val = 1, prev = 0) # tail-recursion returns under 1 second
  if n == 0
    prev
  elsif n == 1
    val
  else
    fibonacci(n-1, val+prev, val)
  end
end

fibonacci(10)
