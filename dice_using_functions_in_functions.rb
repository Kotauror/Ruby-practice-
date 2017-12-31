class Dice
  def initialize(walls)
    @walls = walls
  end

  def roll
    @last_roll = rand(@walls)+1  #rolls
    return @last_roll #returns the last roll
  end

  def get_last_roll
    return @last_roll #only returns the last roll
  end

  def set_last_roll(number)
    @last_roll = number  #changes the last roll variable
  end

  ##### roll2 is a function that utilises the functions above to do all the actions in one function #####

  def roll_all #function connecting roll, get_last_roll and cheat_roll
    score = rand(@walls)+1 #set variable to the roll score
    self.set_last_roll(score) #we set the last roll by using the function cheat roll
    return self.get_last_roll #return the last roll
  end
end

jusiowa = Dice.new(8)
