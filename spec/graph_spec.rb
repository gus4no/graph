require 'spec_helper'

describe Graph do

  let(:graph){ Graph.new }

  describe '#initialize' do
    it 'should initializes nodes array' do
      expect(graph.edges).to be_kind_of(Array)
    end
  end

  describe '#connect' do
    it 'should raise argument error if src not in graph nodes' do
      expect{ graph.connect(1, 2, 1)}.to raise_error(ArgumentError)
    end

    it 'should connect two nodes' do
      graph.push(1)
      graph.push(2)
      expect{ graph.connect(1,2,3) }.to change{ graph.edges.count }.by(2)

    end
  end

end
