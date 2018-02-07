class Customer

  attr_reader :name, :wallet, :age, :drunkeness
  def initialize(name, wallet, age, drunkeness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = drunkeness
  end

  def can_buy_drink(drink)
    if drink <= @wallet
      return true
    else
      return false
    end
  end

  def money_less_drink(money)
    @wallet - money
  end

  def legal_age(age)
    if age >= 18
      return true
    else
      return false
    end
  end

  def add_drunkeness(drink)
    @drunkeness += drink
  end
end
