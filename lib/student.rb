class Student

  attr_accessor :name, :grade
  attr_reader :id

  def initialize
  end

  def self.create_table
    DB.execute(
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        album TEXT
        )
        SQL
    DB[:conn].execute(sql) )
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
