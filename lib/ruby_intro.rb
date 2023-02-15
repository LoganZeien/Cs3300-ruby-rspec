# When done, submit this entire file to the autograder.

# Part 1

# sum all the elements in the array
def sum arr
  arr.sum
end

# sum the largest two elements int the array
def max_2_sum arr
  arr.max(2).sum()
end

def sum_to_n? arr, n
  for pair in arr.combination(2).to_a do
    if pair.sum == n
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.downcase.match(/(?=^[^aeiou])(?=^[a-z])/)
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.downcase.match(/^[0-1]*$/) && s.downcase.match(/[00]$/) #dont combine these regex, it doesnt work
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(_isbn, _price)
    if _isbn.empty? || _price <= 0
      raise ArgumentError.new
    else
      @isbn = _isbn
      @price = _price
    end
  end

  def price_as_string()
    return "$" + sprintf('%.2f', @price) # This nifty sprintf came from https://www.bing.com/ck/a?!&&p=5cbad89e5aa45c83JmltdHM9MTY3NjQxOTIwMCZpZ3VpZD0zNzA3N2Q3NC00YjA5LTZjODctMTM5NC02ZmQ0NGFlZjZkNDAmaW5zaWQ9NTQyMQ&ptn=3&hsh=3&fclid=37077d74-4b09-6c87-1394-6fd44aef6d40&psq=ruby+round+a+float+to+two+decimal+places&u=a1aHR0cHM6Ly9zdGFja292ZXJmbG93LmNvbS9xdWVzdGlvbnMvMTA0NTk5MDEvaG93LWRvLXlvdS1yb3VuZC1hLWZsb2F0LXRvLTItZGVjaW1hbC1wbGFjZXMtaW4tanJ1Ynk&ntb=1 by Theo
  end
end
