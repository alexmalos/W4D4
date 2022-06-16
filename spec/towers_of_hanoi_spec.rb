require "towers_of_hanoi"


describe "towers of hanoi" do
    subject(:game) { TowersOfHanoi.new }

    describe "#initialize" do
        it "creates three arrays" do
            expect(game.arr1.is_a?(Array)).to be(true)
            expect(game.arr2.is_a?(Array)).to be(true)
            expect(game.arr3.is_a?(Array)).to be(true)
        end
    end

    describe "#move" do
        it "moves elements between arrays" do
            game.move
            expect(game.arr3[0]).to eq(1)
        end

        it "calls on game.won?" do
            expect(game).to receive(:won?)
            game.move
        end
        
    end

    describe "won?" do
        context "game is won" do
            it "returns true" do
                game.arr1 = []
                game.arr2 = []
                game.arr3 = [4,3,2,1]
                expect(game.won?).to eq true

            end
        end

        context "game is not won" do
            it "returns false" do
                expect(game.won?).to eq false
            end
        end
    end
end