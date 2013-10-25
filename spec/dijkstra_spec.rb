require 'spec_helper'

describe Dijkstra do
  describe 'self#sample' do
    it 'should return a graph sample' do
      expect(Dijkstra.sample).to be_kind_of(Graph)
    end
  end
end
