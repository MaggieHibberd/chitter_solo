require 'pg'

class ChitterWeb

  def self.all
 connection = PG.connect(dbname: 'chitter_management' )
 result = connection.exec("SELECT * FROM peeps;")
 result.map { |peep| peep['content'] }
  end
end 
