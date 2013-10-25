require 'spec_helper'

describe Graph do

  let(:graph){ Graph.new }

  describe '#initialize' do
    it 'should initializes nodes array' do
      expect(graph.edges).to be_kind_of(Array)
    end
  end

  describe '#add_nodes' do
    it 'should add nodes to the graph' do
      expect{graph.add_nodes(5)}.to change{ graph.count }.by(5)
    end
  end

  describe '#connect' do
    it 'should raise argument error if src not in graph nodes' do
      expect{ graph.connect(1, 2, 1)}.to raise_error(ArgumentError)
    end

    it 'should connect two nodes' do
      graph.add_nodes(2)
      expect{ graph.connect(1,2,3) }.to change{ graph.edges.count }.by(2)

    end
  end

  describe '#neighbors_from' do
    before do
      graph.add_nodes(3)
      graph.connect 1, 2, 1
      graph.connect 1, 3, 1
    end

    it 'should return the node neighbors' do
      neighbors = graph.neighbors_from 1
      expect(neighbors.count).to eq(2)
    end
  end

  describe '#distance' do
    before do
      graph.add_nodes(2)
      graph.connect 1, 2, 5
    end
    it 'should get the distacne between two nodes' do
      dst = graph.distance 1, 2
      expect(dst).to eq(5)
    end
  end

end
