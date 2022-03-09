# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

Returns a string with a chunk of the contents that the user could read in the given number of minutes.

If called again, `reading_chunk` should return the next chunk, skipping what has already been read, until the contents is fully read.

The next call after that it should restart from the beginning.

## 2. Design the Method Signatures

```ruby
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1 'Testing 'title'
diary_entry = DiaryEntry.new("title", "contents")
diary_entry.title
# => "title"

# 2 'Testing 'contents'
diary_entry = DiaryEntry.new("title", "contents")
diary_entry.contents
# => "contents"

# 2 'Testing 'count_wods'
diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" ")))
diary_entry.count_words
# => 200

# 3 'Testing 'reading_time'
diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" ")))
diary_entry.reading_time(200)
# => 1

# 4 'Testing 'reading_chunk'
diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" ")))
diary_entry.reading_chunk(50, 2)
# => 1..100

# 5 'Testing 'reading_chunk'
diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" ")))
reading_entries = []
reading_entries << diary_entry.reading_chunk(50, 2)
reading_entries << diary_entry.reading_chunk(50, 2)
# => 101-200

# 5 'Testing 'reading_chunk'
diary_entry = DiaryEntry.new("title", ("1".."200").to_a.join(" ")))
reading_entries = []
reading_entries << diary_entry.reading_chunk(50, 2)
reading_entries << diary_entry.reading_chunk(50, 2)
reading_entries << diary_entry.reading_chunk(50, 2)
# => 1-100#

```
