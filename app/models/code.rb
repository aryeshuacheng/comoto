# i is being printed way too many times...
# We can try pushing everything to an array, and then running .uniq on it
# Then print the array
# Maybe we should use a loop that will run until a flag is set
#
#
# Calculate combinations/special effects on each number, one method calculates all combos on each integer, and returns either the combination or the integer in sequence
# A looping structure that calls a decision making method that calls each use case
class Code < ApplicationRecord
  def self.fizz_buzz
    for i in 7..120
      puts Code.checkForCombos(i)
    end
  end

  def self.checkForCombos(i)
    @holder = 0

    Code.check_for_buzz(i)
    Code.check_for_fizz(i)
    Code.check_for_fizz_buzz(i)
    Code.check_for_fizz_pop(i)
    Code.check_for_polar_bear(i)

    if @holder.class == String
      puts @holder
    else
      puts i
    end
  end

  def self.check_for_polar_bear(i)
    if i % 3 == 0 && i % 5 == 0 && i % 7 == 0
      @holder =  "PolarBear"
    end
  end

  def self.check_for_fizz_buzz(i)
    if i % 3 == 0 && i % 5 == 0
      @holder = "FizzBuzz"
    end
  end

  def self.check_for_fizz_pop(i)
    if i % 3 == 0 && i % 7 == 0
      @holder = "FizzPop"
    end
  end

  def self.check_for_fizz(i)
    if i % 3 == 0
      @holder = "Fizz"
    end
  end

  def self.check_for_buzz(i)
    if i % 5 == 0
      @holder = "Buzz"
    end
  end

  def self.check_for_pop(i)
    if i % 7 == 0
      @holder = "Pop"
    end
  end
end

# Customer wants 7-120, every time # is divisible by 7 print Pop
# every time # is divisible by 3,5,7 print Polar Bear
