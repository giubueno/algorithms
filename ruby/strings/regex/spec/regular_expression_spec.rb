RSpec.describe RegularExpression do
  describe '#match?' do
    it 'matches an empty string' do
      expect(RegularExpression.match?('', '')).to eq(true)
    end

    it "does not matches '' with pattern 'a'" do
      expect(RegularExpression.match?('', 'a')).to eq(false)
    end

    it "matches 'aab' with pattern 'c*a*b'" do
      expect(RegularExpression.match?('aab', 'c*a*b')).to eq(true)
    end

    it "does not match the string 'aa' with pattern 'a'" do
      expect(RegularExpression.match?('aa', 'a')).to eq(false)
    end

    it "match the string 'aa' with pattern 'aa'" do
      expect(RegularExpression.match?('aa', 'aa')).to eq(true)
    end

    it "match the string 'a' with pattern '.'" do
      expect(RegularExpression.match?('a', '.')).to eq(true)
    end

    it "match the string 'aa' with pattern '..'" do
      expect(RegularExpression.match?('aa', '..')).to eq(true)
    end

    it "does not match the string 'a' with pattern '..'" do
      expect(RegularExpression.match?('a', '..')).to eq(false)
    end

    it "does not match the string 'aa' with pattern '.'" do
      expect(RegularExpression.match?('aa', '.')).to eq(false)
    end

    it "match the string 'aa' with pattern '.a'" do
      expect(RegularExpression.match?('aa', '.a')).to eq(true)
    end

    it "does not match the string 'aa' with pattern '.b'" do
      expect(RegularExpression.match?('aa', '.b')).to eq(false)
    end

    it "does not match the string 'ab' with pattern '.*c'" do
      expect(RegularExpression.match?('ab', '.*c')).to eq(false)
    end

    it "match the string 'aaac' with pattern 'a*ac'" do
      expect(RegularExpression.match?('aaac', 'a*ac')).to eq(true)
    end

    it "match the string 'aa' with pattern 'a*'" do
      expect(RegularExpression.match?('aa', 'a*')).to eq(true)
    end

    it "match the string 'aaaaaaa' with pattern 'a*'" do
      expect(RegularExpression.match?('aaaaaaa', 'a*')).to eq(true)
    end

    it "match the string 'ab' with pattern '.*'" do
      expect(RegularExpression.match?('ab', '.*')).to eq(true)
    end

    it "match the string 'aa' with pattern 'a*a*'" do
      expect(RegularExpression.match?('aa', 'a*a*')).to eq(true)
    end

    it "match the string 'aaa' with pattern 'a*a'" do
      expect(RegularExpression.match?('aaa', 'a*a')).to eq(true)
    end

    it "match the string 'aa' with pattern 'a*a*'" do
      expect(RegularExpression.match?('aaa', 'aaaa')).to eq(false)
    end

    it "match the string 'aaa' with pattern 'ab*a*c*a'" do
      expect(RegularExpression.match?('aaa', 'ab*a*c*a')).to eq(true)
    end

    it "match the string 'bbbba' with pattern '.*a*a'" do
      expect(RegularExpression.match?('bbbba', '.*a*a')).to eq(true)
    end
  end
end
