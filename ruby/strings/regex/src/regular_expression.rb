module RegularExpression
  def self.match?(string, pattern)
    return string.empty? if pattern.empty?

    first_match = string.length > 0 && [string[0], '.'].include?(pattern[0]) # check simple char match (including wildcard .)

    if pattern[1] == '*' # zero or more matches of string[0]
      return match?(string, pattern[2, pattern.length]) || # assume zero char match
        first_match && match?(string[1, string.length], pattern) # since string[0] matches, remove the matching char
    else
      return first_match && match?(string[1, string.length], pattern[1, pattern.length]) # simple char match, remove one char of both
    end
  end
end
