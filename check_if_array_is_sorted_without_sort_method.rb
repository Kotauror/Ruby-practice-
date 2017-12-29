
arr = [2, 3, 4, 5, 7] # true
arr2 = [5, 3, 3, 1] # true
arr3 = [2, 4, 5, 3] # false
arr4 = [1, 1, 1, 1, 1, 1, 1, 1] # MILIARD JEDYNEK
def check_if_sorted(arr)
  d = arr.length
  counter_increasing = 0
  counter_decreasing = 0

  for i in 0..d-2 do
    if arr[i] < arr[i+1] then
      counter_increasing += 1
    end
    if arr[i] > arr[i+1] then
      counter_decreasing += 1
    end
    if counter_decreasing > 0 && counter_increasing > 0 then
      return false
    end
  end

  return true

end

check_if_sorted(arr)
check_if_sorted(arr2)
check_if_sorted(arr3)
