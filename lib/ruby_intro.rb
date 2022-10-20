# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum   #Ruby automatically returns the result of the most recently evaluated statement, so an explicit return is not needed
            #This is a built-in method of the array class that allows you to sum all of an array's elements.
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    firstBiggest = arr.max
    bigIndex = arr.find_index firstBiggest
    arr.delete_at bigIndex
    secondBiggest = arr.max
    firstBiggest + secondBiggest
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else
    outerCount = 0
    arr.each do |firstNumber|
      innerCount = 0
      arr.each do |secondNumber|
        if outerCount != innerCount
          sum = firstNumber + secondNumber
          if sum == n
            return true
          end
        innerCount = innerCount + 1
        end
      end
      outerCount = outerCount + 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  eval = s =~ /\A[b-df-hj-np-tv-zB-DF-HH-NP-TV-Z]/
  if eval == 0
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  containsVowel = s =~ /\D/
  if containsVowel != nil
    return false
  end
  if s.length == 0
    return false
  elsif s.length == 1
    if s == "0"
      return true
    else
      return false
    end
  else
    lastIndex = s.length - 1
    secondIndex = s.length - 2
    if s[lastIndex] == "0" and s[secondIndex] == "0"
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn, @price = isbn, price
    if isbn.length == 0 or price <= 0
        raise ArgumentError
    end
  end

  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    string = "$%0.2f" % [@price]
  end
end
