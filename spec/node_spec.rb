require 'spec_helper'

describe Node do

  describe '#initialize' do
    it 'should assign sources and destinations' do
      n = Node.new({}, {})
      expect(n.src).to be_kind_of(Hash)
      expect(n.dst).to be_kind_of(Hash)
      expect(n.weight).to eq(1)
    end
  end

end
