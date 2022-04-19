=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

given_number = 600851475143

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

number_till_the_check_should_run = given_number/2
(2...number_till_the_check_should_run/2).each do |number|
  if(given_number%number == 0)
    puts number unless !isPrime(number)
  end
end
