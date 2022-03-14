class Diary
  def initialize
    @entries = []    
  end
  
  def add(entry)
    @entries << entry
  end

  def time_to_read(wpm, minutes)
    total_words_to_read = wpm * minutes
    entries_array = []
      
    @entries.each do |entry|
      if entry.count_words <= total_words_to_read
        entries_array << entry
      end
    end
    entries_array.sort_by! { |entry| entry.count_words}
    entries_array[-1].read_entry
  end

  def read_all_entries
    all_entries = []
    @entries.each do |entry|
      all_entries << entry.read_entry
    end
    "My Diary\n#{all_entries.join}"
  end

  def all_diary_numbers
  end
  
end
