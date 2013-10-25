require 'spec_helper'

describe Graph do

  let(:graph){ Graph.new }

  describe '#initialize' do
    it 'should initializes nodes array' do
      expect(graph.nodes).to be_kind_of(Array)
    end
  end
  describe '#add_node' do
    it 'should add a node' do
      expect{ graph.add_node({}) }.to change{ graph.nodes.count }.by(1)
    end
  end
end
