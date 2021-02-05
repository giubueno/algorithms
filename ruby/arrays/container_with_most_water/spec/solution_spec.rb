RSpec.describe ContainerWithMostWater::Solution do
  let(:heights) { [1,8,6,2,5,4,8,3,7] }
  let(:expected) { 49 }

  subject { described_class.new(heights) }

  describe '.brute_force' do
    it { expect(subject.brute_force).to eq(expected) }
  end

  describe '.optmized' do
    it { expect(subject.optmized).to eq(expected) }
  end
end
