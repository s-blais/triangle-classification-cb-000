class Triangle

  attr_accessor :l1, :l2, :l3

  def initialize(length1, length2, length3)
    @l1 = length1
    @l2 = length2
    @l3 = length3
  end

  def invalid_triangle?
    if (l1 + l2) <= l3 || (l1 + l3) <= l2 || (l2 + l3) <= l1
      true
    elsif l1 <= 0 || l2 <= 0 || l3 <=0
      true
    else
      false
    end
  end

  def kind
    if invalid_triangle?
      raise TriangleError
    elsif l1 == l2 && l2 == l3
      :equilateral
    elsif l1 == l2 || l1 == l3 || l2 == l3
      :isosceles
    else
      :scalene
    end
  end


  class TriangleError < StandardError
  end

end
