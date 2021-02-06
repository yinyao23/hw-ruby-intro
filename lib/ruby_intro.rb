# rspec part1_spec.rb
# rspec part1_spec.rb[1:1] test the first sub-block in the first test block

# When done, submit this entire file to the autograder.
# Part 1

def sum arr
  res = 0
  arr.each {|elt| res += elt}
  return res
end

def max_2_sum arr
  arr.sort!
  res = 0
  res += arr[-1] unless arr.length < 1
  res += arr[-2] unless arr.length < 2
  return res
end

def sum_to_n? arr, n
  arr.sort!
  i = 0
  j = arr.length - 1
  while i < j do
    sum = arr[i] + arr[j]
    return true if sum == n
    i += 1 if sum < n
    j -= 1 if sum > n
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return true if s =~ /^[a-z&&[^aeiou]](.*)/i
  return false
end

def binary_multiple_of_4? s
  return false unless s =~ /^[01]+/
  if s == '0' or (s.length >= 2 and s[-1] == '0' and s[-2] == '0')
    return true
  else
    false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string()
    s_pri = '$' + @price.to_s
    s_pri += '.' unless s_pri.include?('.')
    pad_len = 2 - (s_pri.length - s_pri.index('.') - 1)
    if pad_len <= 0
      return s_pri[0, s_pri.length-pad_len]
    else
      return s_pri + '0' * pad_len
    end
  end
end
