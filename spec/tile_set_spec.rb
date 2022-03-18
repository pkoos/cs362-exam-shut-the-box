require_relative '../lib/tile_set'

describe 'A tile set' do

  describe '::generate' do

    it 'returns an array of 9 tiles by default' do
      expect(TileSet.generate.length).to eq(9)
      expect(TileSet.generate.is_a?(Array)).to be_truthy
    end

    it 'returns an array of tiles of a specified length' do
      skip
    end

    it 'returns an array of tiles whose values increase from 1, by 1' do
      skip
    end

  end

end
