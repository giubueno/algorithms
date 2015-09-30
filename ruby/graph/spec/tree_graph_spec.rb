require 'rspec'
require_relative '../lib/tree_graph'

describe TreeGraph do

  subject{ TreeGraph.new 9 }

  it 'should be initialized with each element in it is own set' do
    expect(subject.connected_in?(1, 1)).to be_truthy
    expect(subject.connected_in?(2, 2)).to be_truthy
  end

  it 'should be able to do an union operation' do
    expect(subject.union(1,2)).to be_truthy
  end

  it 'should not do an union twice' do
    expect(subject.union(2,1)).to be_truthy
  end

  it 'should be able to inform if two elements are connected with each other' do
    expect(subject.union(1,2)).to be_truthy
    expect(subject.connected?(1,2)).to be_truthy
    expect(subject.connected?(2,1)).to be_truthy
  end
end