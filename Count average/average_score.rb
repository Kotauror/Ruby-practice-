def average(scores)
  # sum of scores
  scores_accumulator = 0

  scores.each { |score|
    scores_accumulator += score
  }

  result = scores_accumulator.to_f / scores.length
  return result
end

average([15, 23, 16, 100, 19])
