# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```ruby
#`grammar_check` takes some text and ensures it starts with a capital letter and ends with a full stop, exclamation mark or question mark
validity_check = grammar_check(text)

text: a string (e.g. "the cat jumped over the mat")
validity_check = a string that tells the user if sentence is ok or not

#the method returns the time in mins, and does not have side effects.
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#1 
grammar_check("")
#fail "not a sentence"
#2
grammar_check("The cat jumped over the mat.")
#true
#3
grammar_check("The cat jumped over the mat")
#false
#4
grammar_check("the cat jumped over the mat.")
#false
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
