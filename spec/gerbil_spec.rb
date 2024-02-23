require "./spec/spec_helper"

RSpec.describe Gerbil do
  before(:each) do
    @gerbil1 = Gerbil.new("agouti", "base", :male)
    @gerbil2 = Gerbil.new("lilac", "spot", :male)
    @gerbil3 = Gerbil.new("yellow fox", "pied", :female)
    @gerbil4 = Gerbil.new("grey agouti", "base", :male)
    @gerbil5 = Gerbil.new("black", "mottled", :female)
  end

  describe "#initialize" do
    it "can initialize with attributes" do
      expect(@gerbil1).to be_a(Gerbil)
    end

    it "has correct attributes" do
      expect(@gerbil1.color).to eq("agouti")
      expect(@gerbil1.pattern).to eq("base")
      expect(@gerbil1.gender).to eq(:male)
    end

    xit "has incorrect attributes" do
      expect(@gerbil1.color).to eq("rainbow")
      expect(@gerbil1.pattern).to eq("blurry")
      expect(@gerbil1.gender).to eq(:plain)
    end
  end

  describe ".valid_color?" do
    it "has a valid color from the colors list" do
      expect(Gerbil.valid_color?("black")).to be true
      # typoed colors
      # not on the list
    end
  end
end
