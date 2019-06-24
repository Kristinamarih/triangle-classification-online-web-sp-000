class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end
  
  def kind()
    if (@length_1 != @length_2 || @length_3) && (@length_2 != @length_3)
      return @scalene
    elsif (@length_1 == @length_2 || @length_3) || (@length_2 == @length_3)
    return @isosceles
    elsif (@length_3 == @length_2) && (@length_2 == @length_1)
    return @equilateral
  else
    raise TriangleError
  end
end

class TriangleError < StandardError
    
  
end
  
    
end
