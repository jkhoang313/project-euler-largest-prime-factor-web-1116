# Enter your procedural solution here!
require 'pry'
require 'benchmark'
require 'prime'

def largest_prime_factor(number)
  highest_factor = number
  (2..Math.sqrt(number)).each do |number|
    while highest_factor % number == 0
      highest_factor = highest_factor / number
      return highest_factor if highest_factor.prime?
    end
  end
end
