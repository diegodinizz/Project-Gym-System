require_relative("../db/sql_runner.rb")

class Member

  attr_reader :id
  attr_accessor :name, :email, :mobile_number

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @email = options['email']
    @mobile_number = options['mobile_number']
  end

  def save()
    sql = "INSERT INTO members
    (
      name,
      email,
      mobile_number
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @email, @mobile_number]
    results = SqlRunner.run(sql, values).first
    @id = results['id'].to_i
  end

  def update()
    sql = "UPDATE members
    SET
    (
      name,
      email,
      mobile_number
    ) =
    (
      $1, $2, $3
    )
    WHERE id = $4"
    values = [@name, @email, @mobile_number, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM members
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM members"
    results = SqlRunner.run(sql)
    return results.map { |member| Member.new(member) }
  end

  def self.find(id)
    sql = "SELECT * FROM members
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Member.new(results.first)
  end

  def self.delete_all()
    sql = "DELETE FROM members"
    SqlRunner.run(sql)
  end

  def self.map_items(member_data)
    result = member_data.map { |member| Member.new(member) }
    return result
  end

  end
