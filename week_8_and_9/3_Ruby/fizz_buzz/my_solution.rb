# U3.W8-9: 


# I worked on this challenge [by myself, with: Hing Huynh].

# 2. Pseudocode



# 3. Initial Solution

def super_fizzbuzz(array)
  array.map! { |num|
      if num % 3 == 0 && num % 5 == 0
        num = "FizzBuzz"
      elsif num % 3 == 0
        num = "Fizz"
      elsif num % 5 == 0
        num = "Buzz"
      else
        num
      end
    }
  array
end

# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert(statement = "Assertion failed!")
  raise statement unless yield
end

assert { super_fizzbuzz([1,2,3]) == [1, 2, "Fizz"] }
assert { super_fizzbuzz([1,2,5])  == [1, 2, "Buzz"] }
assert { super_fizzbuzz([1,2,15]) == [1, 2, "FizzBuzz"] }
assert { super_fizzbuzz([30, 9, 20, 1]) == ["FizzBuzz", "Fizz", "Buzz", 1] }





# 5. Reflection 