require "./spec/spec_helper"

RSpec.describe Gerbil do
  before(:each) do
    @gerbil1 = Gerbil.new("agouti", "white belly", :male)
    @gerbil2 = Gerbil.new("lilac", "spot", :male)
    @gerbil3 = Gerbil.new("yellow fox", "pied", :female)
    @gerbil4 = Gerbil.new("grey agouti", "white belly", :male)
    @gerbil5 = Gerbil.new("black", "mottled", :female)
  end

  describe "#initialize" do
    it "can initialize with attributes" do
      expect(@gerbil1).to be_a(Gerbil)
    end

    it "has correct attributes" do
      expect(@gerbil1.color).to eq("agouti")
      expect(@gerbil1.pattern).to eq("white belly")
      expect(@gerbil1.gender).to eq(:male)
    end

    it "has incorrect attributes" do
      expect(@gerbil1.color).to eq("rainbow")
      expect(@gerbil1.pattern).to eq("blurry")
      expect(@gerbil1.gender).to eq(:female)
    end
  end
end
