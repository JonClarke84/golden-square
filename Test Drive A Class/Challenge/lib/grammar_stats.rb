class GrammarStats
  def initialize
    @texts_checked = 0
    @texts_passed = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

    sentence_enders = [".", "!", "?"]

    if text.chr != text.chr.upcase
      @texts_checked += 1
      false     
    elsif !sentence_enders.include?(text[-1])
      @texts_checked += 1
      false
    else
      @texts_checked += 1
      @texts_passed += 1
      true
    end

  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    ((@texts_passed.to_f / @texts_checked.to_f) * 100).to_i
  end
end