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

# check if any combination of 2 elements in arr sum to n
def sum_to_n? arr, n
  for pair in arr.combination(2).to_a do # arr.combination(2) creates a new array of every combination of elements of size two, to_a makes it an array
    if pair.sum == n  # for every pair (a,b), if a + b == n, return true
      return true
    end
  end
  return false  # if none of the above (no pair in arr sums to n), return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

# A method that checks if string s starts with a consonant through Regex
def starts_with_consonant? s
  # this regex reads: if the first letter is not a,e,i,o,u and if the first letter is a letter from a-z, let it pass
  if s.downcase.match(/(?=^[^aeiou])(?=^[a-z])/)  #s.downcase makes all letters in s lowercase, .match tries to match it with a regex
    return true # string starts with consonant
  end
  return false  # string does not start with consonant
end

def binary_multiple_of_4? s
  if s.downcase.match(/^[0-1]*$/) && s.downcase.match(/[00]$/) #dont combine these regex, it doesnt work
    return true
  end
  return false
end

# Part 3

# a book class, with attributes isbn and price
class BookInStock
  attr_accessor :isbn, :price # these provide getter+setter for variables isbn and price

  def initialize(_isbn, _price) # constructor, takes arguments _isbn and _price
    if _isbn.empty? || _price <= 0  # checks if parameters are valid, if not, throw an error
      raise ArgumentError.new
    else  # parameters are valid, assign parameters to instance variables
      @isbn = _isbn
      @price = _price
    end
  end

  # a function that will return the price of a book in the form $xx.xx
  def price_as_string()
    return "$" + sprintf('%.2f', @price) # This nifty sprintf came from https://www.bing.com/ck/a?!&&p=5cbad89e5aa45c83JmltdHM9MTY3NjQxOTIwMCZpZ3VpZD0zNzA3N2Q3NC00YjA5LTZjODctMTM5NC02ZmQ0NGFlZjZkNDAmaW5zaWQ9NTQyMQ&ptn=3&hsh=3&fclid=37077d74-4b09-6c87-1394-6fd44aef6d40&psq=ruby+round+a+float+to+two+decimal+places&u=a1aHR0cHM6Ly9zdGFja292ZXJmbG93LmNvbS9xdWVzdGlvbnMvMTA0NTk5MDEvaG93LWRvLXlvdS1yb3VuZC1hLWZsb2F0LXRvLTItZGVjaW1hbC1wbGFjZXMtaW4tanJ1Ynk&ntb=1 by Theo
  end
end
