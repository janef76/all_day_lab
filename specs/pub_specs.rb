require("minitest/autorun")
require_relative("../pub")
require_relative("../customer")
require_relative("../drink")

class TestPub < MiniTest::Test
  def setup()
    @drink1 = Drink.new("Lager", 3, 1)
    @drink2 = Drink.new("Cider", 5, 1)
    @drink3 = Drink.new("Champagne", 25, 2)
    @drink4 = Drink.new("Vodka", 4, 3)
    @drink5 = Drink.new("Gin", 6, 2)
    drinks = [@drink1, @drink2, @drink3, @drink4, @drink5]
    @customer = Customer.new("Homer", 200, 22, 0)
    @pub = Pub.new("Brass Monkey", 0, drinks)
  end

  def test_pub_name
    name = @pub.name
    assert_equal("Brass Monkey", name)
  end

  def test_pub_till
    till = @pub.till
    assert_equal(0, till)
  end

  def test_starting_stock_of_drinks
    number = @pub.drinks.count()
    assert_equal(5, number)
  end

def test_sell_drinks
  @pub.drinks_sold
  stock = @pub.drinks()
  assert_equal(4, stock.count())
end

  def test_add_money_to_till
    till = @pub.add_money(@drink1.price)
    assert_equal(3, till)
  end

  def test_refuse_to_serve
    serve = @pub.refuse_to_serve(@customer.drunkeness)
    assert_equal(false, serve)
  end
end
