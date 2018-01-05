class Todo
  def initialize(task)
    @task = task
  end

  def text
    return @task
  end
end

class TodoList
  def initialize
    @list_of_todos = []
  end

  def add(task)
    @list_of_todos.push(task)
  end

  def print
    @list_of_todos.each { |task|
      puts "* #{task.text}"
    }
  end
end

# my_list = TodoList.new
# zadanie1 = Todo.new("wyrzuc smieci")
# zadanie2 = Todo.new("wyrzuc kota")
#
# my_list.add(zadanie1)
# my_list.add(zadanie2)
# my_list.print
