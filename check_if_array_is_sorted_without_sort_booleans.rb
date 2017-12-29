
arr = [2, 3, 4, 5, 7] # true
arr2 = [5, 3, 3, 1] # true
arr3 = [2, 4, 5, 3] # false
arr4 = [1, 1, 1, 1, 1, 1, 1, 1] # MILIARD JEDYNEK
def check_if_sorted(arr)
  d = arr.length
  increasing = true
  decreasing = true

  for i in 0..d-2 do
    if arr[i] < arr[i+1] then
      decreasing = false
    end
    if arr[i] > arr[i+1] then
      increasing = false
    end
    if !decreasing && !increasing then #if decreasing == false && increasing == false
      return false
    end
  end

  return true

end

check_if_sorted(arr)
check_if_sorted(arr2)
check_if_sorted(arr3)
 
