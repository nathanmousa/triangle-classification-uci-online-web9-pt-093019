class Triangle
  attr_accessor :a, :b, :side_c
  
  def initialize(a, b, side_c)
    @a = a
    @b = b
    @side_c = side_c
  end
  
  def kind
    if a <= 0 || b <= 0 || side_c <= 0
      raise TriangleError
    elsif a + b <= side_c || b + side_c <= a || side_c + a <= b
      raise TriangleError
    else
      if a == b && b == side_c
        :equilateral
      elsif a == b || b == side_c || side_c == a
        :isosceles
      else
        :scalene
      end
    end
  end
    
  class TriangleError < StandardError
  end
    
end
