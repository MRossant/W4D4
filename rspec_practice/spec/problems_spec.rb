require "problems"
require "rspec"
require "spec_helper"

describe "#my_uniq" do
    let(:array) { [1,2,1,3,3] }
    it "removes duplicates from an array" do
        expect(array.my_uniq).to eq([1,2,3])
    end
end
