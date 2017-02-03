# Enter your procedural solution here!
require 'pry'
require 'prime'
def largest_prime_factor(number)
  highest_factor = number

  (2..Math.sqrt(number)).each do |number|
    while highest_factor % number == 0 && (highest_factor/number != 1)
      highest_factor = highest_factor / number
    end
  end
  highest_factor
end

# def largest_prime_factor(number)
#   range = number/2
#   if number.prime?
#     return number
#   else
#     (3..range).to_a.reverse.each do |factor|
#       if number % factor == 0 && factor.prime?
#         return factor
#       end
#     end
#   end
# end
