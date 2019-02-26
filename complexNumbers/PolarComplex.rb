class PolarComplex
  attr_accessor :r, :j

  def initialize(r, j)
    @r = r.to_f
    @j = j.to_f
  end

  def to_s
    "(#{@r},#{@j})"
  end

  def real
    r
  end

  def imaginary
    j
  end

  def add(other)
    PolarComplex.new(r + other.r, j + other.j)
  end

  def subtract(other)
    PolarComplex.new(r - other.r, j - other.j)
  end

  def multiply(other)
    a = r
    b = j
    c = other.r
    d = other.j

    PolarComplex.new(((a * c) - (d * b)), ((a * d) + (b * c)))
  end

  def divide(other)
    a = r
    b = j
    c = other.r
    d = other.j
  
    PolarComplex.new(((a * c) + (d * b))/ (c**2 + d**2 ), ((b * c) - (a * d))/ (c**2 + d**2))
  end

  def conjugate
    PolarComplex.new(r, -j)
  end

  def getConjugatePolar
    "(#{r},#{-j})"
  end

  def getConjugate
    "#{r} + #{-j}i"
  end
end

cn = PolarComplex.new(2, 4)
cn1 = PolarComplex.new(3, 1)
puts cn.add(cn1).to_s
