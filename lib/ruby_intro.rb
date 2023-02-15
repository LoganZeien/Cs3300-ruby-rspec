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
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
