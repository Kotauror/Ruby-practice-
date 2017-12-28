class OrangeTree

  def initialize(age, height, fruit)
    @age = age
    @height = height
    @fruit = fruit
  end

  def height
    return @height
  end

  def oneYearPasses
    unless @age >= 30
      if @age>10 then
        @age += 1
        @height += 2
        @fruit = 50*@age
      else
        @age += 1
        @height += 2
      end
    else
      @fruit = 0
    end
  end

  def countTheOranges
    return @fruit
  end

  def pickAnOrange
    if @fruit > 1 then
      @fruit -= 1
      return "This orange was so delicious"
    else
      return "There are no more oranges to pick this year"
    end
  end
end

jusia=OrangeTree.new(20, 40, 300)
for i in 0..4 do
jusia.oneYearPasses
end
jusia.pickAnOrange
jusia.countTheOranges


#Make an OrangeTree class. It should have a height method which returns its height, and a oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die.

#For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense.

#And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year).

#Make sure that any oranges you don't pick one year fall off before the next year.
