require 'chitterweb'
require 'database_helpers'

describe ChitterWeb do
  describe '.all' do
    it 'returns all peeps' do

      ChitterWeb.create(peep: 'My first peep')
      ChitterWeb.create(peep:'Get to the chopper') 
      ChitterWeb.create(peep: 'We have landed') 

      peeps = ChitterWeb.all

      expect(peeps.first).to be_a ChitterWeb
      expect(peeps.first.id).to eq peeps.first.id
      expect(peeps.first.peep).to eq 'My first peep'
    end
  end

  describe '.create' do
    it 'creates a new peep' do 
      peeps = ChitterWeb.create(peep: 'My first peep')
      persisted_data = persisted_data(id: peeps.id, table: 'peeps')
      expect(peeps).to be_a ChitterWeb
      #Persisted database requiring workthrough
      expect(peeps.id).to eq (peeps.id)
      expect(peeps.peep).to eq 'My first peep'
    end
  end
end

