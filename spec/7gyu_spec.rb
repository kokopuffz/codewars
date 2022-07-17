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

  it "should give me largest consecutive numbers" do 
    answer1 = SevenGyu.solution("12345678909125")
    answer2 = SevenGyu.solution("7316717653133062491922511967442657474235534919493496983520368542506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753123457977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257540920752963450")
    answer3 = SevenGyu.solution("731674765")

    expect(answer1).to eq(90912)
    expect(answer2).to eq(99890)
    expect(answer3).to eq(74765)
  end
end