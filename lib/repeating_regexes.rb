# Implement the below functions in order.
module RepeatingRegexes
  # Returns a regex that matches a string that has an "a" followed by any number
  # of "z"s, followed by another "a".
  #
  # It should match:
  #   * aza
  #   * azzzzzzzzzza
  #   * aa
  def regex_matching_any_number_of_zs
    /WRITE ME/
  end

  # Returns a regex that matches a string that has "z" in it at least once.
  #
  # It should match:
  #   * abcdz
  #   * zzzzzz
  # But should not match:
  #   * abc
  def regex_matching_at_least_one_z
    /WRITE ME/
  end

  # Returns a regex that matches a string that has "a", then a possible "z",
  # then "a".
  #
  # It should match:
  #   * aza
  #   * aa
  def regex_matching_z_at_most_once
    /WRITE ME/
  end

  # Returns a regex that matches a string that has "a", then exactly ten "z"s,
  # then "a".
  #
  # It should match "azzzzzzzzzza", but nothing else. Don't write out the z's
  # yourself! There's an easier way.
  def regex_with_exactly_ten_zs
    /WRITE ME/
  end

  # Returns a regex that matches a string that has "a", then two or more "z"s,
  # then "a".
  #
  # It should match:
  #    * azza
  #    * azzza
  #
  # It should not match:
  #    * aa
  #    * aza
  #    * bzzzzz
  def regex_with_two_or_more_zs
    /WRITE ME/
  end

  # Returns a regex that matches a string that has "a", then ten to twelve "z"s,
  # then "a".
  #
  # It should match:
  #   * azzzzzzzzzza
  #   * azzzzzzzzzzza
  #   * azzzzzzzzzzzza
  #
  # It should not match:
  #   * bzzzzzzzzzzzzzz
  def regex_with_ten_to_twelve_zs
    /WRITE ME/
  end

  # Returns a regex that matches a string that has "a", then at most fifty "z"s,
  # then "a".
  #
  # It should match:
  #   * aa
  #   * aza
  #   * azza
  #   * azzza
  #   * ...etc up to fifty z's
  def regex_with_at_most_fifty_zs
    /WRITE ME/
  end
end
