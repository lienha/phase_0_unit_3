# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself, with: Hing Huynh].


# 1. Original Solution

# def valid_triangle?(a, b, c)
#   sum = 0
#   if a != 0 || b != 0 || c != 0
#     if a >= b
#       largest = a
#       sum += b
#     else largest = b
#       sum += a
#     end

#     if c > largest
#       sum += largest
#       largest = c
#     else sum += c
#     end

#     if sum > largest
#       return true
#     else return false
#     end
#   else return false
#   end
# end

# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error? sum should be removed from argument.
# * what is the exact line number the error is appearing? line 9
# * before you fix the bug, what do you think is causing the error? there are 4 arguments in the method

# --- Bug 2 ---
# * what is the exact description of the error? sum variable needs to be created with value equal 0
# * what is the exact line number the error is appearing? line 14 or 16
# * before you fix the bug, what do you think is causing the error? sum variable is not defined.

# --- Bug 3 ---
# * what is the exact description of the error? true and false should give boolean value and not string
# * what is the exact line number the error is appearing? line 26, 27, 30
# * before you fix the bug, what do you think is causing the error? did not return boolean values.


# 3. Refactored Solution (Comment the other code to run this)
def valid_triangle?(a, b, c)
  a + b > c && a + c > b && b + c > a
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
  "Assertion failed!" unless yield
end

assert { valid_triangle?(3,4,5) == true }
assert { valid_triangle?(115, 252, 277) == true }
assert { valid_triangle?(50, 70, 200) == false }
assert { valid_triangle?(0, 0, 0) == false}

# 5. Reflection 