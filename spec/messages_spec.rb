require "./spec/spec_helper"

RSpec.describe Messages do

  describe "#welcome" do
    it "welcomes the user and asks for input" do
      expect(Messages.welcome).to eq("Welcome! Please input the mother's color.")
    end

    it "has the correct answer message when an incorrect color is provided" do
      expect(Messages.invalid).to eq("Please type a color that matches the following list: agouti, lilac, yellow_fox, grey_agouti, black")
    end
  end



end
