def interactive_menu
  while true do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
      when "1"
        students = input_students_two_values
      when "2"
        print_header
        print_students(students)
        print_footer(students)
      when "9"
        exit # this will cause the program to terminate
      else
        puts "I don't know what you meant, try again"
    end
  end
end

def interactive_menu
  students =[]
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
      when "1"
        students = input_students_two_values
      when "2"
        print_header
        print_students(students)
        print_footer(students)
      when "9"
        exit # this will cause the program to terminate
      else
        puts "I don't know what you meant, try again"
    end
  end
end

# the difference between while true loop and loop
###
# while true - once we set a variable somewhere in the loop, it will be
# available to use within the while loop (in the function where the while is)
# and will be overwritten if needed.

# loop - when loop is in function and there is a variable inside the loop loop,
# this variable will be available only during single block execution and will
# be not available in the next execution of the loop. Variable is set
# only for single execution of a block. Therefore loop loop is a fine tool
# when we want to clear the data after each execution of the loop. We can
# 'remember' the variable in the loop by defining it outside of the loop (See
# line 25th. In this way, students of line 25th will be updated when line 35 is
# called). 
