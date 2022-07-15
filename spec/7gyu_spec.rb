require "./7gyu.rb"

RSpec.describe SevenGyu, "#solve" do 

  it "should get correct_tail" do
    answer1 = SevenGyu.correct_tail("Fox", "x")
    answer2 = SevenGyu.correct_tail("Rhino", "o")
    answer3 = SevenGyu.correct_tail("Meerkat", "t")
    answer4 = SevenGyu.correct_tail("Emu", "t")
    answer5 = SevenGyu.correct_tail("Badger", "s")
    answer6 = SevenGyu.correct_tail("Giraffe", "d")

    expect(answer1).to eq(true)
    expect(answer2).to eq(true)
    expect(answer3).to eq(true)
    expect(answer4).to eq(false)
    expect(answer5).to eq(false)
    expect(answer6).to eq(false)
    # SevenGyu.assert_equals(correct_tail("Fox", "x"), true)
    # 7gyu.assert_equals(correct_tail("Rhino", "o"), true)
    # 7gyu.assert_equals(correct_tail("Meerkat", "t"), true)
    # 7gyu.assert_equals(correct_tail("Emu", "t"), false)
    # 7gyu.assert_equals(correct_tail("Badger", "s"), false)
    # 7gyu.assert_equals(correct_tail("Giraffe", "d"), false)
  end

  it "should multiply" do
    answer1 = SevenGyu.multiply(1, 1)
    answer2 = SevenGyu.multiply(2, 1)

    expect(answer1).to eq(1)
    expect(answer2).to eq(2)
  end

  it "should double space between char, capitalize" do
    answer1 = SevenGyu.vaporcode("Lets go to the movies")
    answer2 = SevenGyu.vaporcode("Why isnt my code working?")

    expect(answer1).to eq("L  E  T  S  G  O  T  O  T  H  E  M  O  V  I  E  S")
    expect(answer2).to eq("W  H  Y  I  S  N  T  M  Y  C  O  D  E  W  O  R  K  I  N  G  ?")
  end

  it "should return [0, 0, 0] if array is empty" do 
    answer = SevenGyu.numbers_with_digit_inside(5, 6)

    expect(answer).to eq([0, 0, 0])
  end

  it "should pass numbers with this digit inside test" do
    answer1 = SevenGyu.numbers_with_digit_inside(7, 6)
    answer2 = SevenGyu.numbers_with_digit_inside(11, 1)
    answer3 = SevenGyu.numbers_with_digit_inside(20, 0)
    answer4 = SevenGyu.numbers_with_digit_inside(44, 4)

    expect(answer1).to eq([1, 6, 6])
    expect(answer2).to eq([3, 22, 110])
    expect(answer3).to eq([2, 30, 200])
    expect(answer4).to eq([9, 286, 5955146588160])
  end
end