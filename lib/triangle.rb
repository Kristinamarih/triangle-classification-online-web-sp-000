class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(length_1, length_2, length_3)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end
  
  def kind
    if (length_1 != length_2 || length_3) && (length_2 != length_3)
      return @scalene
    elsif (length_1 == length_2 || length_3) || (length_2 == length_3)
    return @isosceles
    elsif (length_3 == length_2 == length_1)
    return @equilateral
  else
    raise TriangleError
  end
end
    
end
