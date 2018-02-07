require("minitest/autorun")
require_relative("../drink")

class TestDrink < MiniTest::Test

def setup()
  @drink = Drink.new("Lager", 2, 5)
end

def test_name_of_drink()
  name = @drink.name
  assert_equal("Lager", name)
end

def test_price_of_drink()
  price = @drink.price
  assert_equal(2, price)
end

def test_add_alcohol_drink_level
  level = @drink.alcohol_level()
  assert_equal(5, level)
end


end
