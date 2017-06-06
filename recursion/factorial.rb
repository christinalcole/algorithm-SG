def factorial(n)
  if n == 0  # base case, or terminating case
    1
  else
    n*factorial(n-1)
  end
end
