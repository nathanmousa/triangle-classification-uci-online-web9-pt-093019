class Triangle
  attr_accessor :a, :side_b, :side_c
  
  def initialize(a, side_b, side_c)
    @a = a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind
    if a <= 0 || side_b <= 0 || side_c <= 0
      raise TriangleError
    elsif a + side_b <= side_c || side_b + side_c <= a || side_c + a <= side_b
      raise TriangleError
    else
      if a == side_b && side_b == side_c
        :equilateral
      elsif a == side_b || side_b == side_c || side_c == a
        :isosceles
      else
        :scalene
      end
    end
  end
    
  class TriangleError < StandardError
  end
    
end
