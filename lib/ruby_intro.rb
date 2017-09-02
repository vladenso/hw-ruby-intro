# When done, submit this entire file to the autograder.

#partner: eric_cheng31 

# Part 1

def sum arr
  res = 0
  arr.each {|i| res+=i}
  return res
end

def max_2_sum arr
  if arr.length < 3
    return sum arr
  else 
    arr.sort!
    return arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  (0 .. arr.length-1).each do |i|
    (0 .. arr.length-1).each do |j|
      if i != j and (arr[i] + arr[j]) == n
        return true
      end
    end
  end  
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return s =~ /\A[b-df-hj-np-tv-z]/i 
end

def binary_multiple_of_4? s
  # checks if number is less than 4 or not a multiple of 4
  if s.length == 1 and s[0] != '0' or s.length > 1 and (s[-1] != '0' or s[-2] != '0')
    return false
  end
  # checks if a legal binary
  return s =~ /\A[0-1]+\Z/
  
end

# Part 3

class BookInStock
  def initialize isbn, price
    if isbn.length == 0 or not price.to_f > 0
      raise ArgumentError
    end 
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  
  attr_accessor :price
  
  def price_as_string
    return "$" +  sprintf('%.2f', @price)
  end 
end
