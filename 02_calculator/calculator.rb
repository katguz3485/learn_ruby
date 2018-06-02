#write your code here
def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def sum(array)
  array.inject(0) {|sum, x| sum + x}
end

def multiply(array)
  product = 1
  array.each {|x| product = product * x}
  return product
end

def power(a, b)
  return a ** b
end

def factorial(n)
  (n == 0 || n == 1) ?  1 : n * factorial(n - 1)
end