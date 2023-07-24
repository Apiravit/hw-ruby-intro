# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!
  max_2 = arr.last(2)
  max_2.sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr == [] || arr.length == 1
    return false
  end
  for i in 0..arr.length-1 do
    for j in i+1..arr.length-1 do
      if arr[i] + arr[j] == n
      return true
      end
    end
  end
  return false    
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty? || !s[0].match(/[a-zA-Z]/)
    return false
  elsif s[0].match(/^[b-df-hj-np-tv-z]/i)
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.match(/^[01]+$/)
    num = s.to_i(2)
    num % 4 == 0
  else 
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price

def initialize(isbn, price)
  raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
  raise ArgumentError, 'Price must be greater than zero' if price <= 0

  @isbn = isbn
  @price = price
end

def price_as_string
  format('$%.2f', price)
end
end

