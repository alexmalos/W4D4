require "hand"

describe "hand" do
    arr = [
        Card.new(7, :sp),
        Card.new(3, :sp),
        Card.new(6, :sp),
        Card.new(2, :he),
        Card.new(2, :di)
    ]
    subject(:hand) { Hand.new(arr) }
    
    describe "#initialize" do
        it "builds and array of five cards" do
            expect(hand.hand.count).to eq(5)
        end
    end

    describe "::check_pairs" do
        it "should count how many matching pairs are in the hand" do
            expect(hand.check_pairs).to eq([1, 2])
        end
    end

    describe "::three_of_a_kind" do
        it "should return false if there isn't three of a kind in the hand" do
            expect(hand.three_of_a_kind).to eq(false)
        end
    end

    describe "::four_of_a_kind" do
        arr4 = [
                Card.new(7, :sp),
                Card.new(7, :di),
                Card.new(7, :cl),
                Card.new(7, :he),
                Card.new(2, :di)
            ]
        subject(:hand4) { Hand.new(arr4) }

        it "should return true if there is a four of a kind in the hand" do
            expect(hand4.four_of_a_kind).to eq(true)
        end
    end
end

