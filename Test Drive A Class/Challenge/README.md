# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

Challenge

Test-drive a class with the following interface. Feel free to re-use or re-write your previous code.

## 2. Design the Method Signatures

```ruby
class GrammarStats
  def initialize
    # ...
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end
```
