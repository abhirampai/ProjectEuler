=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

n = 20
flag = 0
while 1 do
  (1..20).each do |num|
    if(n%num != 0)
      flag = 1
      break
    end
  end
  if flag == 0 
    puts n
    break
  end
  n += 1
  flag = 0
end
