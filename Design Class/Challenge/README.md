# {{PROBLEM}} Class Design Recipe.

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

```ruby
# EXAMPLE

class MusicList
  def initialize(track) # track must be a string
    # throws error if track is not string
  end

  def add(track) # adds a track to the list
    # Returns new list with new track added
    # Throws error if track is not a string
  end

  def list # Shows the user their track list
    # Returns the current list
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
music_list = MusicList.new(4) # fails with "Not a string"

# 2
music_list.add(5) # fails with "Not a string"

# 3
music_list = MusicList.new("Never Gonna Give You Up")
music_list.add("Happy Birthday")
# => "["Never Gonna Give You Up", "Happy Birthday"]"

# 4
music_list = MusicList.new("Never Gonna Give You Up")
music_list.add("Happy Birthday")
music_list.add("Let It Go")
music_list.list
# => "["Never Gonna Give You Up", "Happy Birthday", "Let It Go]"
```
