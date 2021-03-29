class Player

  # we can read it oustiside the class
  attr_reader :name

  # we can access and overwrite outside the class
  attr_accessor :lives, :turn

  def initialize(name)
    @name = name
    @lives = 3
    @turn = false
  
  end

end

