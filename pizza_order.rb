@orderCount = 0;

def takeOrder(topping, crustType)
  @orderCount += 1
  puts "Order: #{crustType} pizza topped with #{topping}"
end

takeOrder('mushroom', 'thin crust');
takeOrder('spinach', 'whole wheat');
takeOrder('pepperoni', 'brooklyn style');

puts @orderCount

def getSubTotal(itemCount)
  return itemCount * 7.5
end

def getTax(itemCount2)
  return getSubTotal(itemCount2) * 0.06
end

def getTotal(itemCount3)
  return getSubTotal(itemCount3) + getTax(itemCount3)
end

puts getSubTotal(@orderCount)
puts getTotal(@orderCount)
