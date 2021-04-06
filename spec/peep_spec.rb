require 'chitterweb'

describe ChitterWeb do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'chitter_management_test')

      connection.exec("INSERT INTO peeps (content) VALUES ('My first peep');")
      connection.exec("INSERT INTO peeps (content) VALUES ('Get to the chopper');")
      connection.exec("INSERT INTO peeps (content) VALUES ('We have landed');")

      peeps = ChitterWeb.all

      expect(peeps).to include('My first peep')
      expect(peeps).to include('Get to the chopper')
      expect(peeps).to include('We have landed')

    end
  end

  describe '.create' do 
    it 'creates a new peep' do 
      ChitterWeb.create(peep: 'Hope everyone is having a smasher of a day!')

      expect(ChitterWeb.all).to include 'Hope everyone is having a smasher of a day!'
    end
  end
end