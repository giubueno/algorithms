require 'spec_helper'

describe Math do
  describe ".factorial" do
    it "should calculate a small result" do
      expect(Math.factorial(3)).to eq(6)
    end
    it "should return 1 for 0" do
      expect(Math.factorial(0)).to eq(1)
    end
  end

  describe ".combination" do
    it "should calculate the combination of n,k" do
      expect(Math.combination(3,2)).to eq(3)
    end
    it "should calculate a fairly big result" do
      expect(Math.combination(52,5)).to eq(2598960)
    end
  end

  describe ".median" do
    it "should return null if there is no number" do
      expect(Math.median([])).to be_nil
    end
    it "should return the first element if there is only one number" do
      expect(Math.median([1])).to eq(1)
    end
    it "should return the calculated median when there are only two numbers" do
      expect(Math.median([1,2])).to eq(1.5)
    end
    it "should return the value in the middle" do
      expect(Math.median([1,2,3])).to eq(2)
    end
   it "should return the calculated value between the two values" do
     expect(Math.median([1,2,3,4])).to eq(2.5)
    end
  end
end
