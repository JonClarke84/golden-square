def grammar_check(text)
  if (text.chr.upcase == text.chr) && (text[-1] == ".")
    true
  elsif text == ""
    fail "not a sentence"
  else
    false
  end
end
