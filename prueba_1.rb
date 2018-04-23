class Table
  attr_accessor :tname, :collect
  def initialize(tname, *collect)
    @tname = tname
    @collect = collect.map(& :to_i)
  end

  def self.create_tables
  tables = []
  lines = File.open('casino.txt', 'r').readlines
  lines.each do |line|
    new_line = line.split(', ')
    tables << Table.new(new_line.shift, *new_line)
  end
  tables
  end

  def self.max_profit
    tables = self.create_tables
    best_tables = {}
    tables.each_with_index do |table, day|
    best_tables[table.tname] = [table.collect.max, day + 1]
  end
  print best_tables.max_by{ |x, v| v[0] }
end

def Table.profit_average
  tables = create_tables
  result  = []
  tables.each do |tables|
    result << tables.collect
end

end
end

Table.max_profit
puts '####################'
print Table.profit_average
