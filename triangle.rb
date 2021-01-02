# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  a,b,c = sides = [a,b,c].sort
  raise TriangleError unless a > 0 and a + b > c
  [:scalene, :isosceles, :equilateral][-sides.uniq.size]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

#  if((a==b) && (a==c))
#     return :equilateral
#   elsif((a==b) || (a==c) || (b==c))
#     return :isosceles
#   else
#     return :scalene
#   end

# case [a, b, c].uniq.size
#     when 1 then :equilateral
#     when 2 then :isosceles
#     else        :scalene
#   end

# for compatibility with the tests
# def triangle(a, b, c)
#   t = Triangle.new(a, b, c)
#   return t.type
# end

# class Triangle
#   def initialize(a, b, c)
#     @sides = [a, b, c].sort
#     guard_against_invalid_lengths
#   end

#   def type
#     case @sides.uniq.size
#     when 1 then :equilateral
#     when 2 then :isosceles
#     else :scalene
#     end
#   end

#   private
#   def guard_against_invalid_lengths
#     if @sides.any? { |x| x <= 0 }
#       raise TriangleError, "Sides must be greater than 0"
#     end

#     if @sides[0] + @sides[1] <= @sides[2]
#       raise TriangleError, "Not valid triangle lengths"    
#     end
#   end
# end