require( 'pg' )

class SqlRunner

  def self.run( sql, values = [] )
    begin
      db = PG.connect({ dbname: 'd63b6he8i78na1', 
        host: 'ec2-54-235-86-101.compute-1.amazonaws.com',
        user: 'glqyehuqqzylre',
        password: 'fda8112179ad5bd0cdd3961e9f5333f76cf9375725bc4e874aab2784f4cd0896' })
      db.prepare("query", sql)
      result = db.exec_prepared( "query", values )
    ensure
      db.close() if db != nil
    end
    return result
  end

end
