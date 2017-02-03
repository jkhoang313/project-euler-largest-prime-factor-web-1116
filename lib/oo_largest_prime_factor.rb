# Enter your object-oriented solution here!
require 'pry'
class LargestPrimeFactor
  attr_accessor :number

  def initialize(number)
    @number = number
    (2..Math.sqrt(@number)).each do |num|
      while @number % num == 0 && (@number/num != 1)
        @number = @number / num
      end
    end
  end
end
