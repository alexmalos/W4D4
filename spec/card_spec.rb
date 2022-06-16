require 'card'


describe "#initialize(val, :sym)" do
    card = Card.new(3, :sp)
    it "creates an instance of a card" do
        expect(card).to_not eq(nil)
    end

    it "gives cards a number value" do
        expect(card.val).to eq(3)
    end

    it "gives cards a symbol" do
        expect(card.sym).to eq(:sp)
    end
end