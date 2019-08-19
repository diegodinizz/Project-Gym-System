require_relative("../db/sql_runner.rb")

class Gymclass

  attr_reader :id
  attr_accessor :name, :duration, :calories, :instructor

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @duration = options['duration']
    @calories = options['calories']
    @instructor = options['instructor']
  end

  def save()
    sql = "INSERT INTO gymclasses
    (
      name,
      duration,
      calories,
      instructor
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id"
    values = [@name, @duration, @calories, @instructor]
    results = SqlRunner.run(sql, values).first
    @id = results['id'].to_i
  end

  def update()
    sql = "UPDATE gymclasses
    SET
    (
      name,
      duration,
      calories,
      instructor
      ) =
      (
        $1, $2, $3, $4
      )
      WHERE id = $5"
      values = [@name, @duration, @calories, @instructor, @id]
      SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM gymclasses
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM gymclasses"
    results = SqlRunner.run(sql)
    return results.map { |gymclass| Gymclass.new(gymclass) }
  end

  def self.find(id)
    sql = "SELECT * FROM gymclasses
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Gymclass.new(results.first)
  end

  def self.delete_all()
    sql = "DELETE FROM gymclasses"
    SqlRunner.run(sql)
  end

  def self.map_items(gymclass_data)
    result = gymclass_data.map { |gymclass| Gymclass.new(gymclass) }
    return result
  end

  end
