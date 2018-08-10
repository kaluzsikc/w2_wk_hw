class Room

  attr_reader :name, :spaces, :fee, :guests, :songs

  def initialize(name, spaces, fee, guests, songs)
    @name = name
    @spaces = spaces
    @fee = fee
    @guests = guests
    @songs = songs
  end

  def add_guest_to_room(guest_num)
    @guests += guest_num
  end

  def remove_guest_from_room(guest_num)
    @guests -= guest_num
  end

  def too_many_guests?(guest)
    return guests >= spaces
  end


end
