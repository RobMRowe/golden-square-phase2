require 'count_words'

RSpec.describe "count_words method" do
  context "given an empty string" do
    it "returns 0" do
      result = count_words("")
      expect(result).to eq 0
    end
  end

  context "given a string containing 1 word" do
    it "returns 1" do
      result = count_words("one")
      expect(result).to eq 1
    end
  end

  context "given a string containing 7 words" do
    it "returns 7" do
      result = count_words("one two three four five six seven")
      expect(result).to eq 7
    end
  end

  context "given a string containing 4 words with punctuation" do
    it "returns 4" do
      result = count_words("one two, three four")
      expect(result).to eq 4
    end
  end
end
