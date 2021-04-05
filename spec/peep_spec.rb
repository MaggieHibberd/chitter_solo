require 'chitterweb'

describe ChitterWeb do
  describe '.all' do
    it 'returns all bookmarks' do
      peeps = ChitterWeb.all

      expect(peeps).to include('My first peep')
      expect(peeps).to include('Get to the chopper')
      expect(peeps).to include('We have landed')

    end
  end
end