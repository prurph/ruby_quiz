# .______       _______ .___  ___.      ___       __  .__   __.      ______     ___       __      .___  ___.
# |   _  \     |   ____||   \/   |     /   \     |  | |  \ |  |     /      |   /   \     |  |     |   \/   |
# |  |_)  |    |  |__   |  \  /  |    /  ^  \    |  | |   \|  |    |  ,----'  /  ^  \    |  |     |  \  /  |
# |      /     |   __|  |  |\/|  |   /  /_\  \   |  | |  . `  |    |  |      /  /_\  \   |  |     |  |\/|  |
# |  |\  \----.|  |____ |  |  |  |  /  _____  \  |  | |  |\   |    |  `----./  _____  \  |  `----.|  |  |  |  __
# | _| `._____||_______||__|  |__| /__/     \__\ |__| |__| \__|     \______/__/     \__\ |_______||__|  |__| (__)
require_relative '../quiz'

# The first question's tests are written.
# run rspec quiz_spec.rb
describe "#sleep_in?" do
  it "returns true if the current day is Saturday or Sunday" do
    # assuming you're answering this on a weekday!
    expect(sleep_in?).to be(false)
  end

  it "takes an options hash as a parameter" do
    parameters = method(:sleep_in?).parameters.first
    expect(parameters).to include(:options)
  end

  it "returns true if vacation is true" do
    question_1 = sleep_in?(vacation: true)
    expect(question_1).to be(true)
  end
end

# Write the next tests yourself!
# See quiz.rb for more details

# Question 2: a method called del_del
  # Example Usage:
  # del_del("abdelcd") => "abcd"
  # del_del("xyz") => "xyz"
describe '#del_del' do
  it 'returns abcd if passed abelcd' do
    expect(del_del("abdelcd")).to eq "abcd"
  end

  it 'returns original if no del matched' do
    expect(del_del("xyz")).to eq "xyz"
  end

end



# Question 3: a method called missing_char
  # Example Usage:
  # missing_char("kitten", 1) => "ktten"
  # missing_char(347, 1) => RuntimeError: Please enter a string!
  # https://www.relishapp.com/rspec/rspec-expectations/v/2-14/docs/built-in-matchers/raise-error-matcher

describe '#missing_char' do
  it 'deletes character at index of a string' do
    expect(missing_char("kitten", 1)).to eq "ktten"
  end
  it 'raises an error when passed a non-string' do
    expect{ missing_char(347, 1) }.to raise_error(RuntimeError)
  end
end

# Question 4: a method called near_hundred
  # Example Usage:
  # near_hundred(93) => true
  # near_hundred(52) => false
  # near_hundred('two') => RuntimeError: Please enter a number!
describe '#near_hundred' do
  it 'returns true when number between 90 and 99' do
    expect(near_hundred(93)).to be true
  end
  it 'returns false when number not between 90 and 99' do
    expect(near_hundred(52)).to be false
  end
  it 'raises RuntimeError when not passed a Fixnum' do
    expect {near_hundred('two')}.to raise_error(RuntimeError)
  end
end

# Question 5: a method called back_around
  # Example Usage:
  # "cat".back_around => "tca"
  # "hello".back_around => "ohell"
describe '#back_around' do
  it 'returns a string with the last index in front' do
    expect(back_around("cat")).to eq "tca"
  end
end
