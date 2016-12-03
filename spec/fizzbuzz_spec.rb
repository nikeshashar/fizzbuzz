require 'fizzbuzz'

describe Fizzbuzz do

  let(:fizzbuzz) { Fizzbuzz.new }

  it "knows when a number is divisible by three" do
    expect(fizzbuzz.is_divisible_by_three?(3)).to be true
  end

  it "knows when a number is NOT divisible by three" do
    expect(fizzbuzz.is_divisible_by_three?(1)).to be false
  end

  it "knows when a number is divisible by five" do
    expect(fizzbuzz.is_divisible_by_five?(5)).to be true
  end

  it "knows when a number is NOT divisible by five" do
    expect(fizzbuzz.is_divisible_by_five?(1)).to be false
  end

  it "knows when a number is divisible by both three and five" do
    expect(fizzbuzz.is_divisible_by_fifteen?(15)).to be true
  end

  it "knows when a number is NOT divisible by both three and five" do
    expect(fizzbuzz.is_divisible_by_fifteen?(1)).to be false
  end

  it "returns 'Fizz' when a number is divisible by 3" do
    expect(fizzbuzz.play(3)).to eq("Fizz")
  end

  it "returns 'Buzz' when a number is divisible by 5" do
    expect(fizzbuzz.play(5)).to eq("Buzz")
  end

  it "returns 'FizzBuzz' when a number is divisible by 3 and 5" do
    expect(fizzbuzz.play(15)).to eq("FizzBuzz")
  end

  it "returns the original number when NOT divisible by 3 or 5" do
    expect(fizzbuzz.play(1)).to eq(1)
  end
end
