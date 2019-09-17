# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+) #base case 0 for empty set, takes sum of arr
end

def max_2_sum arr
  first_max = arr.max #find first max of arr
  arr.delete_at(arr.index(first_max)) #delete first max froma arr
  second_max = arr.max  #find new max
  puts sum([first_max, second_max]) #call previously written sum function to add 2 highest elements
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1 #checks if arr is a single elemens
    return false
  else 
    arr.combination(2).any? {|a, b| a + b == n} #checks every combination and sums them, if equal to n returns true, else returns false
  end
end



# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

#function calls
#puts sum([0,1,2]) #calls def sum
#puts max_2_sum([1, 2, 3])
puts sum_to_n?([1, 4, 3], 6)