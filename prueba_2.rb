require 'date'
class Course
  attr_accessor :name, :dates
  def initialize(name, *dates)
    @name = name
    @dates = dates.map { |date| Date.parse(date) }
  end

  def initial_course(filter_date)
    @dates.select { |date| date < filter_date }

  end

  def self.create_table
    tables = []
    lines = File.open('cursos.txt', 'r').readlines
    lines.each do |line|
    new_line = line.split(', ')
    tables << Course.new(*new_line)
    end
    tables
  end
end
print Course.create_table
