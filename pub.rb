class Pub
  attr_reader :name, :drinks
  attr_accessor :till
  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
end

def drinks_sold()
  @drinks.pop()
end

def add_money(money)
  @till += money
end

def refuse_to_serve(level)
  if level > 20
    return true
  else
    return false
  end
end

end
