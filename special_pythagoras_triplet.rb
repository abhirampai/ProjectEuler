=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

c = 0
a = 0
b = 0
flag = 0
total = 1000
  (1..total).each do |num1|
    (num1+1..total).each do |num2|
        num3 = total - num1 - num2
        if(((num1*num1) + (num2*num2)) == num3*num3)
          puts(num3, num2, num1)
          a = num1
          b = num2
          c = num3
          flag = 1
          break
        end
      end
    if flag == 1
      break
    end
  end

puts a*b*c
