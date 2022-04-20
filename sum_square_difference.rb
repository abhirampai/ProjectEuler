=begin
The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 
3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end

def diff_of_square_and_square_of_sum(number)
  sum_of_square = 0
  square_of_sum = 0
  (1..number).each do |num|
    sum_of_square += num*num
    square_of_sum += num
  end
  return (square_of_sum*square_of_sum) - sum_of_square
end

n = 100
puts diff_of_square_and_square_of_sum(100)
