class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    #
    # Uses regex to keep punctuation intact
    #
    str.gsub(/(?<=\b)[A-Za-z]{5,}(?=\b)/) do |match|
      match[0].upcase == match[0] ? "Marklar" : "marklar"
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    #
    # This algo makes use of the fact that every third
    # number in the sequence is an even number. Thus
    # I only have to compute every third number in the
    # sequence
    #
    sum = 0
    last_a = 1
    last_b = 1
    temp = 0
    i = 3
    while i <= nth
      temp = last_a + last_b     # Compute the next even Fibonacci number
      sum += temp                # Add it to the sum
      last_a = temp + last_b     # Update last_a (skip one number)
      last_b = last_a + temp     # Update last_b (skip another number)
      i += 3
    end
  
    return sum
  end

end
