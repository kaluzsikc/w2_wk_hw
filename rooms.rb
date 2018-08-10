class Room

  attr_reader :name, :spaces, :fee, :guests, :songs

  def initialize(name, spaces, fee, guests, songs)
    @name = name
    @spaces = spaces
    @fee = fee
    @guests = guests
    @songs = []
  end

end
