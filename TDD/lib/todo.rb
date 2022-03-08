def check_todo(text)
  if text == ""
    false
  elsif text.include?("@TODO")
    true
  else
    false
  end
end