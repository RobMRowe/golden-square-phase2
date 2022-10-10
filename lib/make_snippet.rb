def make_snippet(string)
  words = string.split
  output = words[0..4].join(' ')
  output += "..." if words.length > 5
  return output
end
