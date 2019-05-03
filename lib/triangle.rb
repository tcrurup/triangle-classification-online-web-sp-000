class Triangle
  
  attr_reader :side_lengths
  
  def initialize(side_length_1, side_length_2, side_length_3)
    @side_lengths = [side_length_1, side_length_2, side_length_3]
  end
  
  def kind
    #The different types of triangles can be determined by how many unique inegers are 
    #in the array of side_lengths. 1 unique is an equalaterial, 2 unique is an isoscele, and 
    #3 unique is a scalene
    
    if self.side_lengths.all?{ |length| length > 0 }
      case self.side_lengths.uniq.length
        when 1 
          :equilateral
        when 2 
          :isosceles
        when 3
          :scalene
      end
    else
      raise TriangleError
    end
  end
  
  class TriangleError < StandardError
    
  end
end
