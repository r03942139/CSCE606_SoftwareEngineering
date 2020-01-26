# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0 then 0
  else arr.inject(0) { |sum, elem| sum + elem }
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0 then 0
  elsif arr.length == 1 then arr[0]
  else
    sum = 0
    n = arr.size
    sort_arr = arr.sort
	  sum = sort_arr[n-1]+sort_arr[n-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  (0..arr.length-1).each do |i|
      (i+1..arr.length-1).each do |j|
          return true if arr[i] + arr[j] == n
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
  return false if s.empty?
  s.each_char{ |c|
      return false if c != "1" and c != "0"}
  return true if s.to_i(2) % 4 == 0
  false # false in any other case
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize isbn, price
      if isbn.empty? then raise ArgumentError end
      @isbn = isbn
      if price <= 0 then raise ArgumentError end
      @price = price
  end

  def price_as_string
      "$#{format("%.2f", @price)}"
  end
end
