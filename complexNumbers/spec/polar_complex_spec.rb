require '/Users/seangelb/RubymineProjects/complexNumbers/PolarComplex.rb'

describe PolarComplex do
  describe "#getConjugatePolar" do
    it "should return conjugate coordinates" do
      complex = PolarComplex.new(1,1)
      expect(complex.getConjugatePolar).to eql("(1.0,-1.0)")
    end
  end

  describe "#getConjugate" do
    it "should return conjugate" do
      complex = PolarComplex.new(1,1)
      expect(complex.getConjugate).to eql("1.0 + -1.0i")
    end
  end

  describe "#addComplex" do
    it "should add complex numbers" do
      complex = PolarComplex.new(3,0)
      cn1 = PolarComplex.new(2,0)
      expect(complex.add(cn1).to_s).to eql("(5.0,0.0)")
    end
  end

  describe "#subractComplex" do
    it "should subtract complex numbers" do
      complex = PolarComplex.new(3,0)
      cn1 = PolarComplex.new(2,1)
      expect(complex.subtract(cn1).to_s).to eql("(1.0,-1.0)")
    end
  end

  describe "#multiplyComplex" do
    it "should multiply complex numbers" do
      complex = PolarComplex.new(2,4)
      cn1 = PolarComplex.new(3,1)
      expect(complex.multiply(cn1).to_s).to eql("(2.0,14.0)")
    end
  end

  describe "#divideComplex" do
    it "should divide complex numbers" do
      complex = PolarComplex.new(2,4)
      cn1 = PolarComplex.new(3,1)
      expect(complex.divide(cn1).to_s).to eql("(1.0,1.0)")
    end
  end
  
end