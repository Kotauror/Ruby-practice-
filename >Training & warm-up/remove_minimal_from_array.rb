def remove_smallest(numbers)
  minimal = numbers.min
  i = 0
  length = numbers.length
    while i < length do
      if numbers[i] != minimal then
        i += 1
      elsif numbers[i] == minimal then
        numbers.delete_at(i)
        break
      end
    end
  numbers
end
