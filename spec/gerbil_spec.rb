require "./spec/spec_helper"

RSpec.describe Gerbil do
  before(:each) do
    @gerbil1 = Gerbil.new("agouti", "self", :male)
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
  end

  describe ".valid_color?" do
    it "has a valid color from the colors list" do
      expect(Gerbil.valid_color?("black")).to be true
      expect(Gerbil.valid_color?("aguuti")).to be false
      expect(Gerbil.valid_color?("painted")).to be false
      expect(Gerbil.valid_color?("white")).to be false
    end

    xit "cannot create a gerbil with an invalid color" do
      expect{Gerbil.new("painted", "sparkly", :alien)}.to raise_error("Text here.")
    end

  end


end
