class Triangle

  attr_reader :side1, :side2 , :side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def sides
    [side1, side2, side3]
  end

  def kind
    if (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side1 + side3) <= side2
      raise  TriangleError

    elsif side1 == side2  &&  side2 == side3
      :equilateral
    elsif sides.uniq == sides
      :scalene
    else
      :isosceles
    end
  end




end

class TriangleError < StandardError

end
