class Triangle
  # write code here
  attr_reader :side1, :side2, :side3
  def initialize(side1,side2,side3)
    @side1=side1
    @side2=side2
    @side3=side3
    
  end
  def kind
    validate_triagnle
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end
    
  end
  def valid_triangle?
    [side1,side2,side3].all? {|side| side > 0}
  end
  def triangle_inequality
    side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
  end
  def validate_triagnle
    raise TriangleError unless valid_triangle? && triangle_inequality
    
    
  end
  class TriangleError < StandardError

  end
end
