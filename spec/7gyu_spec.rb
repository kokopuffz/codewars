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
end