class House
  attr_reader :price, :address, :rooms

  def initialize(price, address, rooms = [])
      @price = price
      @address = address
      @rooms = rooms
  end

  def add_room(rooms)
    add.room
  end
end
