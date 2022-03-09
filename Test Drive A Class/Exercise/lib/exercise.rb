class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @remaining_contents = @contents
    @reading_entry = []
  end

  def title
    @title   
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(/ /).length
  end

  def reading_time(wpm)
    count_words / wpm
  end

  def reading_chunk(wpm, minutes)
    
    @remaining_contents = @contents if @remaining_contents == ""

    reading_chunk = []
    total_words = wpm * minutes
    remaining_contents = @remaining_contents.split(/ /)

    reading_chunk = remaining_contents.slice!(0...total_words).join(" ")
    @remaining_contents = remaining_contents.join(" ")
    reading_chunk
  end
end

