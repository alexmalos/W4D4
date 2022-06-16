require "deck"

describe "deck" do
    it "should make the deck length 52" do 
        my_deck = Deck.new
        expect(my_deck.size).to eq(52)
    end

end