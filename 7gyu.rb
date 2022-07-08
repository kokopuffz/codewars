class SevenGyu 

  def self.correct_tail(body, tail)
    last_letter = body[-1]
    return true if tail == last_letter
    false
  end
end