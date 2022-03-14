class DiaryEntry
  def initialize(title, contents) # title, contents are strings

    fail "title and contents are blank" if title == "" && contents == ""
    fail "title is blank" if title == ""
    fail "contents are blank" if contents == ""
  
    @title = title
    @contents = contents
  end

  def title
    @title
  end

  def contents
   @contents
  end

  def read_entry
    "Title: #{@title}. Entry: #{@contents}\n"    
  end

  def count_words
    @contents.split.count
  end

  # def reading_time(wpm) 
  #   count_words / wpm
  # end
end