require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "takes a string as an argument and returns a string" do
    result = make_snippet("I am a string of words").class
    expect(result).to eq String
  end

  it "returns the first 5 words of strings of 5 or fewer words" do
    result = make_snippet("I'm short")
    expect(result).to eq "I'm short"
  end

  it "returns the first 5 words, appending elipses, for strings of greater than 5 words" do
    result = make_snippet("I am a string of words")
    expect(result).to eq "I am a string of..."
  end
end
