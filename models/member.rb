require_relative("../db/sql_runner.rb")

class Member

  attr_reader :id
  attr_accessor :name, :post_code, :date_of_birth, :email, :mobile_number

  def initialize (options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @post_code = options['post_code']
    @date_of_birth = options['date_of_birth']
    @email = options['email']
    @mobile_number = options['mobile_number']
  end

  def save()
    sql = "INSERT INTO members
    (
      name,
      post_code,
      date_of_birth,
      email,
      mobile_number
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING id"
    values = [@name, @post_code, @date_of_birth, @email, @mobile_number]
    results = SqlRunner.run(sql, values).first
    @id = results['id'].to_i
  end


end
