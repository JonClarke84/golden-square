# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string @TODO.

## 2. Design the Method Signature

```ruby
#this method will check if a string contains the text "@TODO"

check_todo(text)
returns true if the text contains @TODO
otherwise returns false

text: a string (e.g. "put the bins out")
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#1
check_todo("")
#false

#2
check_todo("put the bins out")
#false

#3
check_todo("put the bins out @TODO")
#true

#4
check_todo("put the bins out TODO")
#false

#5
check_todo("put the bins out @todo")
#false

#6
check_todo("@TODO")
#true


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
