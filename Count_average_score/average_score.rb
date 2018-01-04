# Define the average method
def count_average(scores)
  scores_accumulator = 0

  scores.each do |score|
    scores_accumulator += score
  end

  return scores_accumulator.to_f / scores.length
end

def print_average(scores)
  puts count_average(scores)
end

# Here are the scores
test_scores_for_class_1 = [55, 78, 67, 92]
test_scores_for_class_2 = [48, 99, 91, 70]
test_scores_for_class_3 = [56, 58, 61, 98, 100]

# Print out the averages
puts "Average score for class 1: "
print_average(test_scores_for_class_1)
puts "Average score for class 2: "
print_average(test_scores_for_class_2)
puts "Average score for class 3: "
print_average(test_scores_for_class_3)

#print the school average
puts "School average: "
puts count_average([count_average(test_scores_for_class_1), count_average(test_scores_for_class_2), count_average(test_scores_for_class_3)]).to_s
