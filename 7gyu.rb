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

  def self.numbers_with_digit_inside(x, d)
    # refractored

    nums = ('1'..x.to_s).select { |num| num.include?(d.to_s) }.map(&:to_i)
    [nums.size, nums.reduce(0, :+), nums.reduce(:*) || 0]
  end
    # ----------original answer ------------
    #your code here
    # get all numbers separated 
    # check each set of numbers find and make new 
    # first is count of numbers in this array
    # solution = [count_of_d_inside, sum_of_nums, mult_of_nums]
  #   nums = []
  #   range_of_nums = (1..x).to_a
  #   solution = []
    
  #   range_of_nums.each do |i|
  #     i = i.to_s.split('')
  #     if i.include?(d.to_s)
  #       nums << i.join('').to_i
  #     end
  #   end
    
  #   if nums.empty?
  #     return [0, 0, 0]
  #   else
  #     solution << nums.count
  #     solution << nums.sum
  #     solution << nums.inject(:*)
  #   end
    
  #   solution
  # end 

  def self.solution(digits)
    # iterate through each number
    # have a something that holds the highest so far
    # replace if it's higher
    current_highest = ""
    current_nums = ""
    x = 0
    while x <= digits.length-5 do
      current_nums = digits[x..x+4]
      if current_nums.to_i < current_highest.to_i
        current_highest = current_highest
      else
        current_highest = current_nums
      end 
      x += 1
    end
      
    current_highest.to_i 
  end
end