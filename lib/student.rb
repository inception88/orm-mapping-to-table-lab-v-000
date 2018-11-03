class Student

  attr_accessor :name, :grade
  attr_reader :id

  def initialize
  end

  def self.create_table
    DB[:conn].execute(
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        album TEXT
        )
        SQL
    DB[:conn].execute(sql) )
  end

end
