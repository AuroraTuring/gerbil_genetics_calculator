require "./spec/spec_helper"

RSpec.describe Messages do

  describe "#launch" do
    it "welcomes the user and asks for input" do
      expect(Messages.welcome).to eq("Welcome! Please input the mother's color.")
    end

    it "has the correct answer message when an incorrect color is provided" do
      expect(Messages.invalid).to eq("Please type a color that matches the following list: agouti, lilac, yellow_fox, grey_agouti, black")
    end

    it "asks for father color after mother color" do
      expect(Messages.father).to eq("Thank you! Now please input the father's color.")
    end

    it "populates a list of baby colors after parent colors have been inputted" do
      expect(Messages.babies).to eq("Here is a list of all possible pup colors for these parents:")
    end

  end


end
