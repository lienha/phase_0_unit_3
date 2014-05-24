# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: Hing Huynh].

# 2. Pseudocode



# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
    width * height
  end

  def perimeter
    2 * (width + height)
  end

  def diagonal
    (width ** 2 + height ** 2) ** 0.5
  end

  def square?
    width == height
  end
end


# 4. Refactored Solution

# I don't see how to refactor it further




# 1. DRIVER TESTS GO BELOW THIS LINE
def assert(statement = "Assertion failed!")
  raise statement unless yield
end

rectangle = Rectangle.new(10, 20)
square = Rectangle.new(20, 20)
assert { rectangle.area == 200 }
assert { rectangle.perimeter == 60 }
assert { rectangle.diagonal == 22.360679774997898 }
assert { rectangle.square? == false }
assert { square.area == 400 }
assert { square.perimeter == 80 }
assert { square.diagonal == 28.284271247461902 }
assert { square.square? == true }
assert { rectangle.==(square) == false }




# 5. Reflection 
# This exercise is straight-forward. I didn't run into any problems.