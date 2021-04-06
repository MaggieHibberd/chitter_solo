require 'pg'

class ChitterWeb

  def self.all
    if ENV['ENVIRONMENT'] == 'TEST'
      connection = PG.connect(dbname: 'chitter_management_test' )
    else
      connection = PG.connect(dbname: 'chitter_management' )
    end
      result = connection.exec("SELECT * FROM peeps;")
      result.map { |peep| peep['content'] }
  end
end 
