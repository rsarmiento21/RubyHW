# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  
  if arr.empty?
    return 0
  else
    return arr.inject(){|sum,x| sum + x }
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  
  if arr.empty?
    return 0
  elsif arr.count == 1
    return arr[0]
  else
    arr.sort!.reverse!
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.count == 0 || arr.count == 1
    return false
  else
    length = arr.count
    i = 0
    j = 0
    until i > length do
      if i + 1 < length
        j = i + 1
        until j >= length do
          if arr[i] + arr[j] == n
            return true
          end
          j += 1
        end
      end
      i += 1
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  vowels = ['a', 'e', 'i', 'o', 'u']
  
  if s.size == 0 || (s[0] =~ /[A-Za-z]/) == nil
    return false
  end
  
  for i in vowels do
   
    if s[0].downcase == i
      return false
    end
  end
  return true
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.size == 0
    return false
  end
  s.reverse!
  
  
  len = s.size
  count = 0
  total = 0
  until count >= len do
    if s[count] != '0' && s[count] != '1'
      return false
    end
    if s[count] == '1'
      total += 2**count
    end
    count += 1
  end
  if total %4 == 0
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE

  
  def initialize(isbn, price)
    if isbn.size == 0
      raise(ArgumentError)
    end
    
    if price <= 0
      raise(ArgumentError)
    end
    
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    twodec = '%.2f' % price
    return "$" + twodec
  end
end
