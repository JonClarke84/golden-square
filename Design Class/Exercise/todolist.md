User story
As a user so that I can keep track of my tasks - I want a program that I can add todo tasks to and see a list of them.
So that I can focus on tasks to complete - I want to mark tasks as complete and have them disappear from the list.

```ruby
class: TodoList

intializer

* The method will have a instance variable that will hold all the todo tasks within an array: @list

* there will be one parameters in the initializer method: which will accept a string of tasks.

methods

* add(todo) - method that will add the argument passed to the method into @list.todo will be a string.

* complete(task) - this will accept the argument passed to the method and remove from @list. task will be a string

* print - method that will print out the tasks from the @list variable. This will not accept any parameters. 
```

```ruby
# example test cases

# 1
task = TodoList.new("Take the dog for a walk")
task.print
# => "Take the dog for a walk"

# 2
task = TodoList.new("Take the dog for a walk", "clean the windows")
task.complete("clean the windows")
task.print
# => "Take the dog for a walk"

# 3
task = TodoList.new("Take the dog for a walk")
task.add("clean the windows")
task.print
# => "Take the dog for a walk, clean the windows"

# 4
# 5
# 6

```