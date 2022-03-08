def make_snippet(str)
  split = str.split(/ /)
  output_string = split[0..4].join(" ")
  if split.length > 5
    output_string += "..."
  else
    output_string
  end
end