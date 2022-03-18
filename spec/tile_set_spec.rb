require_relative '../lib/tile_set'

describe 'A tile set' do

  describe '::generate' do

    it 'returns an array of 9 tiles by default' do
      expect(TileSet.generate.length).to eq(9)
      expect(TileSet.generate.is_a?(Array)).to be_truthy
      expect(TileSet.generate[7].is_a?(Tile)).to be_truthy
    end

    it 'returns an array of tiles of a specified length' do
      length = 7
      expect(TileSet.generate(length).length).to eq(7)
    end

    it 'returns an array of tiles whose values increase from 1, by 1' do
      
      (1..9).each { |n| 
      tile = TileSet.generate[n-1]
      expect(tile.value).to eq(n)
    }
      
    end

  end

end
