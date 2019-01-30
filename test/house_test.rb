require 'minitest/autorun'
require 'minitest/pride'
require '../lib/room'
require '../lib/house'

class HouseTest < Minitest::Test

  def test_house_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_price_of_house
    house = House.new("$400000", "123 sugar lane")
    assert_equal "$400000", house.price
  end

  def test_address_of_house
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_rooms_defaults_to_empty_array
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_room_1_instance
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    assert_equal room_1, house.add_room(room_1)



  end
end
