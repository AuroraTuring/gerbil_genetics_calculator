require "./spec/spec_helper"

RSpec.describe Gerbil do
  before(:each) do
    gerbil1 = Gerbil.new("Agouti", "white belly", :male)
    gerbil2 = Gerbil.new("Lilac", "spot", :male)
    gerbil3 = Gerbil.new("Yellow Fox", "pied", :female)
    gerbil4 = Gerbil.new("Grey Agouti", "self", :female)
    gerbil5 = Gerbil.new("Black", "mottled", :female)
  end

  describe "#initialize" do
    it "can initialize with attributes" do
      expect(gerbil1).to be_a(Gerbil)
    end
  end
end
