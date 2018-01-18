def longest_palindrome s
  max_palindrome_len = 0
  for i in (0..s.length)
    for j in (i..s.length)
      substr = s[i..j]
      if substr == substr.reverse && substr.length > max_palindrome_len
        max_palindrome_len = substr.length
      end
    end
  end
  return max_palindrome_len
end
