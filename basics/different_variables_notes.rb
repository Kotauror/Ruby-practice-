#  -------------------------- LOCAL VARIABLES --------------------------

def my_method
  my_variable = 1
end

my_variable

# my_variable: undefined method `my_variable' for main
# Why can't the main object see the my_variable variable,
# even though it was defined in the lines above? The answer that most makes sense:
#  my_method didn't get executed yet. We only declared it, but we didn't call the method.

# !!!!!!!!!!!!!! LOCAL Variables that we define inside a 
# --> def...end
# or
# --> class...end
# cannot be seen outside of them


#  -------------------------- INSTANCE VARIABLES --------------------------

class Dog
  def initialize(colour)
    @colour = colour
  end

  # We can use @colour in any methods defined on Dog instances
  # Such as this one
  def observe
    "You see a " + @colour + " dog."
  end
end

# We can't see @colour from outside instances of the Dog class
# Here, we're trying to access @colour from the main object
# It can't see the instance variable @colour
@colour
