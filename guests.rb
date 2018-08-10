class Guest

  attr_reader :name, :money

  def initialize(name, money)
    @name = name
    @money = money
  end

# buying ticket for the room
  def buy_ticket(room)
    @money -= room.fee
  end
  # def buy_ticket(fee)
  #   @money -= fee
  # end

  def sufficient_money?(room)
    return room.fee <= money
  end
end
