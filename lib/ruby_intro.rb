# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+) #base case 0 for empty set, takes sum of arr
end

def max_2_sum arr
  if arr.length == 1 #error check for single element arr
    return arr[0]
  elsif arr.length == 0 #error check for empty arr
    return 0
  end
  first_max = arr.max #find first max of arr
  arr.delete_at(arr.index(first_max)) #delete first max froma arr
  second_max = arr.max  #find new max
  puts sum([first_max, second_max]) #call previously written sum function to add 2 highest elements
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1 #checks if arr is a single elemens
    return false
  else 
    arr.combination(2).any? {|a, b| a + b == n} #checks every combination and sums them, if equal to n returns true, else returns false (last line value returned as default)
  end
end


# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  first_letter = s[0] #gets first letter of string s
  true_array = ['a', 'e', 'i', 'o', 'u'] #arr of vowels
  true_array.include? first_letter #check and return true if first letter is included in array
end

def binary_multiple_of_4? s
  if s.length == 0 || s.count('01') != s.length
    return false
  end
  new_s = s.delete(' ') #strip all white space
  new_int = new_s.to_i(2) #convert binary string to integer base 2
  if new_int % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price 
  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0 || price <= 0 #raises error for invalid inputs
    @isbn = isbn 
    @price = price
  end
  def price_as_string
    new_price = '%.2f' % price #ensure price has 2 decimal places
    return "$" + new_price.to_s #add dollar sign to string
  end
end


#FUNCTION CALLS

#PART 1
#SUM
#puts sum([0,1,2]) 
#puts sum([])

#MAX 2 SUM  
#puts max_2_sum([1, 2, 3])
#puts max_2_sum([1, 2, 3, 3])
#puts max_2_sum([])
#puts max_2_sum([3])

#SUM TO N
#puts sum_to_n?([1, 4, 3], 6)
#puts sum_to_n?([-1, -2, 3, 4, 5, -8], -3)
#puts sum_to_n?([-1], -1)
#puts sum_to_n?([], 7)

#PART 2
#HELLO
#puts hello('Dan') 

#STARTS WITH CONSONANT
#puts "'atest' (should return true): " + starts_with_consonant?('atest').to_s
#puts "'test' (should return false): " + starts_with_consonant?('test').to_s
#puts "'' (should return false): " + starts_with_consonant?('').to_s
#puts "'#@$' (should return false): " + starts_with_consonant?('#@$').to_s

#BINARY MULTIPLE OF 4
#puts binary_multiple_of_4?('101 1000000000001')
#puts binary_multiple_of_4?('0100')
#puts binary_multiple_of_4?('a100')
#puts binary_multiple_of_4?(' ')

#PART 3
#BOOK IN STOCK
@book = BookInStock.new('isbn1', 33.8)
#puts @book.price
#puts @book.isbn = 'isbn2'
#puts BookInStock.new('isbn1', -5)
#puts BookInStock.new('', 2)
#puts BookInStock.new('isbn3', 20.1).price_as_string

