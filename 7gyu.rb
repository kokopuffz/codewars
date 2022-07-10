class SevenGyu 

  def self.correct_tail(body, tail)
    body[-1] == tail
    # body.end_with? tail
    # last_letter = body[-1]
    # last_letter == tail ? true : false
    # return true if tail == last_letter
    # false
  end

  def self.multiply(a, b)
    a * b
  end

  def self.vaporcode(string)
    # capitalize, delete all space, split by char, rejoin by double space
    string.upcase.delete(" ").split("").join("  ")
  end
end