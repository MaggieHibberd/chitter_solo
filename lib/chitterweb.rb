require 'pg'

class ChitterWeb

  attr_reader :id, :peep, :timestamp

  def initialize(id:, peep:, timestamp:)
    @id = id
    @peep = peep
    @timestamp = timestamp
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_management_test' )
    else
      connection = PG.connect(dbname: 'chitter_management' )
    end
    result = connection.exec('SELECT * FROM peeps;')
    result.map  do |peep|
      ChitterWeb.new(id: peep['id'], peep: peep['content'], timestamp: peep['timestamp'])
    end
  end

  def self.create(peep:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_management_test')
    else
      connection = PG.connect(dbname: 'chitter_management')
    end
    result = connection.exec("INSERT INTO peeps (content) VALUES('#{peep}') RETURNING content, id, timestamp;")
    ChitterWeb.new(peep: result[0]['content'], id: result[0]['id'], timestamp: result[0]['timestamp'])
  end

end

