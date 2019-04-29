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

  def update()
    sql = "UPDATE attendences
    SET
    (
      member_id,
      gymclass_id
    ) =
    (
      $1, $2,
    )
    WHERE id = $3"
    values = [@member_id, @gymclass_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM attendences
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def member()
    sql = "SELECT * FROM members
    WHERE id = $1"
    values = [@member_id]
    results = SqlRunner.run(sql, values)
    return Member.new(results.first)
  end

  def gymclass()
    sql = "SELECT * FROM gymclasses
    WHERE id = $1"
    values = [@gymclass_id]
    results = SqlRunner.run(sql, values)
    return Gymclass.new(results.first)
  end

  def self.all()
    sql = "SELECT * FROM attendences"
    results = SqlRunner.run(sql)
    return results.map { |attendence| Attendence.new(attendence) }
  end

  def self.find(id)
    sql = "SELECT * FROM attendences
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Attendence.new(results.first)
  end

  def self.delete_all()
    sql = "DELETE FROM attendences"
    SqlRunner.run(sql)
  end

  end
