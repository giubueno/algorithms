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
end
