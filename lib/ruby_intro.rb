# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  # YOUR CODE HERE
  sumOfNum=0
  if arr.size==0
    return 0
  elsif arr.size>0
    sumOfNum=arr.inject(0){|sumOfNum,i|sumOfNum+i}
    return sumOfNum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size==0
    return 0
  elsif arr.size==1
    return arr[0]
  else
    summ=0
    sorted_arr=arr.sort
    summ=sorted_arr[arr.size-1]+sorted_arr[arr.size-2]
    return summ
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # Array indexing starts at 0, as in C or Java
  flag=0
  num=arr.size-1
  # returns false for any single element array
  # returns false for an empty array
  # returns true when any two elements sum to the second argument
  if arr.size<=1
	  if n==0
		  flag=0
	  end
  else 
	  for i in 0..num
		  for k in i+1..num
			  if arr[i]+arr[k]==n
				  flag=1
			  end
		  end
	  end
  end
  
  if flag==1
	  return true
  else
	  return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # i added at the end to make regular expression case insensitive.
  # \W is used to catch any non-word character, for example if a string starts with a digit like: "?something"
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # binary multiple of 4
  #  be sure it returns false if the string is not a valid binary number
  if s =~ /^[01]*00$/ || s == '0'
    return true
  else
    return false
  end
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
# ISBN number, isbn as string
# price of the book as a floating-point number, price
  def isbn
    @isbn
  end

  def price
   @price
  end
  
  def isbn=(value)
    @isbn = value
  end

  def price=(value)
    @price = value
  end
  
  def initialize(isbn,price)
    if isbn.size == 0 || price<=0
      raise ArgumentError.new("bad argument")
    else
      @isbn = isbn
      @price = price
    end
  end

  # Include a method price_as_string that returns the price of the book formatted with a leading dollar sign and two decimal places
  def price_as_string
    "$"+format("%0.2f",@price)
  end
  
end
