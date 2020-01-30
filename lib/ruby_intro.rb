# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length==0
    result=0
  else
    result=0
    for i in arr
      result=result+i
    end
  end
  return result
    
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length==0
    result=0
  elsif arr.length==1
    result=arr[0]
  else
    arr=arr.sort
    result=arr[-1]+arr[-2]
  end
  return result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length<=1
    return false
  else
    for i in 0...arr.length
      for j in (i+1)...arr.length
        if arr[i]+arr[j]==n
          return true
        end
      end
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
  # YOUR CODE HERE
  if s.length==0
    return false
  else
    arr=["A", "E", "I", "O", "U","a","e","i","o","u"]
    if !arr.include? s[0] and s[0]=~(/[[:alpha:]]/)
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length==0 or s=~(/\D+/)
    return false
  else
    if (s.to_i)%4==0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor:isbn
  attr_accessor:price
  def initialize(isbn,price)
    if isbn.length==0 or price<=0
      raise(ArgumentError)
    end
    @isbn=isbn
    @price=price
  end
  
  def price_as_string
    return "$%.2f"%@price.to_f()
  end

end
