require_relative("../db/sql_runner.rb")

class Attendence

  attr_reader :member_id, :gymclass_id, :id

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @member_id = options['member_id'].to_i
    @gymclass_id = options['gymclass_id'].to_i
  end

  def save()
    sql = "INSERT INTO attendences
    (
      member_id,
      gymclass_id
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@member_id, @gymclass_id]
    results = SqlRunner.run(sql, values).first
    @id = results['id'].to_i
  end


end
