# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0 
    return 0
  else
    return arr.inject(0) { |sum, elem| sum + elem }
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sum = 0
    n = arr.size
    sort_arr = arr.sort
	  sum = sort_arr[n-1]+sort_arr[n-2]
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  (0..arr.length-1).each do |i|
    (i+1..arr.length-1).each do |j|
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
  "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  v = s.downcase
  "bcdfghjklmnpqrstvxz".each_char{ |letter|
    return true if v[0] == letter }
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false 
  end
  s.each_char{ |c|
    return false if c != "1" and c != "0"}
  if s.to_i(2) % 4 == 0
    return true
  end
  return false # false in any other case
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize isbn, price
      if isbn.empty? 
        then raise ArgumentError
      end
      @isbn = isbn
      if price <= 0
        then raise ArgumentError 
      end
      @price = price
  end

  def price_as_string
    "$#{format("%.2f", @price)}"
  end
end
