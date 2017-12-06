class WineUnder20::Wine
  attr_accessor :name, :price, :url, :description

  @@all = []

  def initialize(name, price, url, description)
    @name = name
    @price = price
    @url = url
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end


end
