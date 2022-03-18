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
      counter = 0
      value=counter + 1
      max_value = 9
      tileset = TileSet.generate

      tile = tileset[counter]
      expect(tile.value).to eq(value)
      
      counter += 1
      value += 1
      tile = tileset[counter]
      expect(tile.value).to eq(value)

      counter += 6
      value += 6
      tile = tileset[counter]
      expect(tile.value).to eq(value)

      last_tile = tileset[-1]
      expect(last_tile.value).to eq(max_value)
      
    end

  end

end
