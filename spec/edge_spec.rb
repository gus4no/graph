require 'spec_helper'

describe Edge do

  describe '#initialize' do
    it 'should assign sources and destinations' do
      n = Edge.new('a', 'b')
      expect(n.src).to eq('a')
      expect(n.dst).to eq('b')
      expect(n.weight).to eq(1)
    end
  end

  describe '#neighbors' do
    it 'should return the node neighbors' do

    end
  end

end
