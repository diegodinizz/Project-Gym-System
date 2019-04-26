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

end
