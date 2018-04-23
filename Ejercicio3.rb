class Store
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
puts store = Store.new('Tienda 1').name
# puts store.name
