require "towers_of_hanoi"
require "rspec"
require "spec_helper"
describe TowersOfHanoi do

    subject(:towers) { TowersOfHanoi.new }

    describe "initialize" do

        it "instantiates three arrays correctly" do
            expect(towers.pile_1).to eq([3,2,1])
            expect(towers.pile_2).to eq([])
            expect(towers.pile_3).to eq([])
        end
    end

    describe "#move" do
        let(towers.pile_1) = [3,2]
        let(towers.pile_2) = [1]
        let(towers.pile_3) = []

        it "should only move one disk at a time" do
            expect(towers.pile_1.length).to eq(towers.pile.length - 1)
        end

        it "should raise error if a bigger disk is moved to a smaller disk" do
            expect { [1,2] }.to raise_error("BiggerSmallerError")
        end

        context "should prompt a user to enter a move" do

            it "should use gets to receive input from user" do

            end

            it "should call chomp on the user's input" do

            end
        end
    end

    describe "#won?" do

        it "should not be the first turn" do
            expect(towers.turn).not_to eq(0)
        end

        it "returns true if the game is won" do
            expect(towers.won?).to eq true
        end
    end
end