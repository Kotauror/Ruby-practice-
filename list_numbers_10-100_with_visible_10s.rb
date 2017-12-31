my_number = 9 #test

while my_number < 105 do
  my_number += 1
  print " #{my_number} " unless my_number%10 == 0

  if my_number%10 == 0 then
    print " <#{my_number}> "
  end

  if my_number == 100 then
    break
  end

end 
