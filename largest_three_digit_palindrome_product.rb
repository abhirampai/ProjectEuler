=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

def is_palindrome(number)
  number_string = number.to_s
  if number_string == number_string.reverse
    return true
  end
  return false
end

max_product = 0

(100..999).reverse_each do |num1|
  (100...num1).reverse_each do |num2|
    if(is_palindrome(num1*num2))
    if(max_product < num1*num2)
      max_product = num1*num2
    end
    end
  end
end

print max_product
  
