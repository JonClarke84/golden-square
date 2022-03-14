class Diary
  def initialize
    @entries = []    
  end
  
  def add(entry)
    @entries << entry
  end

  def time_to_read(wpm, minute)
    
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
