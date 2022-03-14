class DiaryEntry
  def initialize(title, contents) # title, contents are strings

    fail "title and contents are blank" if title == "" && contents == ""
    fail "title is blank" if title == ""
    fail "contents are blank" if contents == ""
  
    @title = title
    @contents = contents
    @mobile_number = has_mobile_number?(@contents)
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

  def mobile_number
    @mobile_number
  end

  def has_mobile_number?(contents)
    contents.split.each do |word|
      if (word[-1] == ".") || (word[-1] == "!") || (word[-1] == "?") || (word[-1] == ",")
        word.chop!
      end
      if (word.length == 11) && (word[0] == "0") && (word[1] == "7") && (word !~ /\D/)
        return word
      end
    end
    return nil
  end

  # def reading_time(wpm) 
  #   count_words / wpm
  # end
end