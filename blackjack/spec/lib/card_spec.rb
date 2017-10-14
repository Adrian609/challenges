require "spec_helper"
require_relative
#[♥ ♠ ♦ ♣]
#RSpec.describe Card do

#this has not been tested...

describe Card do
  let(:ace_card) = { Card.new(suit, rank) }
  describe "#initialize" do
    it "is a Card object" do
      expect(ace_card).to be_a(Card)
    end

    it "has a suit" do
      expect(ace_card.suit).to eq("♥")
    end

    it "has a value" do
      expect(ace_card.value).to eq "A"
    end

  end

  describe "#ace_card?" do
    it "returns true if the card has a value of A" do
      expec(ace_card.ace_card?).to eq(true)
    end
  end
end
