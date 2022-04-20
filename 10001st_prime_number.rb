=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

def isPrime(number)
  if(number <= 1)
    return false
  end
  if(number <= 3)
    return true
  end
  if(number%2 == 0 || number%3 == 0)
    return false
  end
  iterator = 5
  while iterator*iterator <= number do
    if(number%iterator == 0 || number%(iterator+2) == 0)
      return false
    end
    iterator += 6
  end
    return true
end

n = 2
count = 1
while count < 10001 do 
  n += 1
  if(isPrime(n))
    count+=1
  end
end
puts n
