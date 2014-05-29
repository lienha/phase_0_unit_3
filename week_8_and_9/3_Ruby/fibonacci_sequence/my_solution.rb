# U3.W8-9: 


# I worked on this challenge [by myself, with: Hing Huynh].

# 2. Pseudocode



# 3. Initial Solution

def is_fibonacci?(number)
  i = 0
  arr = [0,1]
  if number == i || number == 1 
    return true
  else
    while i <= number
      i = arr[arr.length - 1] + arr[arr.length - 2]
      arr << i
    end   
  end
  arr.include?(number) ? true : false
end

# 4. Refactored Solution

def is_fibonacci?(number)
  arr = [0,1]
  true if number == 0 || number == 1
  while arr[arr.length - 1] < number
    arr << arr[arr.length - 1] + arr[arr.length - 2]
  end   
  arr.include?(number) 
end

# 1. DRIVER TESTS GO BELOW THIS LINE
def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

def assert(statement = "Assertion failed!")
  raise statement unless yield
end

assert { is_fibonacci?(random_fibonacci) == true }
assert { is_fibonacci?(random_fibonacci) == true }
assert { is_fibonacci?(random_fibonacci) == true }
assert { is_fibonacci?(random_fibonacci) == true }
assert { is_fibonacci?(90) == false }
assert { is_fibonacci?(0) == true }
assert { is_fibonacci?(1) == true }

# 5. Reflection 