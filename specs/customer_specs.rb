require("minitest/autorun")
require_relative("../customer")
require_relative("../drink")

class TestCustomer < MiniTest::Test
  def setup()
    @drink = Drink.new("Cider", 5, 5)
    @customer = Customer.new("Zorro", 100, 21, 0)
  end

  def test_name_of_customer
    name = @customer.name
    assert_equal("Zorro", name)
  end

  def test_money_in_wallet
    money = @customer.wallet
    assert_equal(100, money)
  end

  def test_age_of_customer
    age = @customer.age
    assert_equal(21, age)
  end

  def test_drunkeness_of_customer
    drunk = @customer.drunkeness
    assert_equal(0, drunk)
  end

  def test_can_buy_drink
    result = @customer.can_buy_drink(@drink.price)
    assert_equal(true, result)
  end

  def test_money_in_wallet__less_drink
    result = @customer.money_less_drink(@drink.price)
    assert_equal(95, result)
  end

  def test_legal_age
    age = @customer.legal_age(@customer.age)
    assert_equal(true, age)
  end

  def test_add_drunkeness
    drunk = @customer.add_drunkeness(@drink.alcohol_level)
    assert_equal(5, drunk)
  end

end
