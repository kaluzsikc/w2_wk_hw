class Room

  attr_reader :name, :spaces, :fee, :guests, :songs

  def initialize(name, spaces, fee, guests, songs)
    @name = name
    @spaces = spaces
    @fee = fee
    @guests = guests
    @songs = songs
  end

  # def sell_ticket
  #   return if too_many_guests?(guest)
  #
  # end

  def check_in_guest_to_room(guest_num)
    @guests += guest_num
  end

  def check_out_guest_from_room(guest_num)
    @guests -= guest_num

    # increase number of spaces when guests leave
    @spaces -= guest_num

  end

  def too_many_guests?(guest)
    return guests >= spaces
  end

  def add_new_song(new_song)
    songs << new_song
  end
end
