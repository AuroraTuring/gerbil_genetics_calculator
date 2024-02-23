require "./spec/spec_helper"

RSpec.describe Messages do

  describe "#welcome" do
    it "welcomes the user and asks for input" do
      expect(Messages.welcome).to eq("Welcome! Please input the mother's color.")
    end
  end



end
