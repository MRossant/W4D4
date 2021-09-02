require "problems"
require "rspec"
require "spec_helper"

describe "#my_uniq" do
    let(:array) { [1,2,1,3,3] }
    it "removes duplicates from an array" do
        expect(array.my_uniq).to eq([1,2,3])
    end

    it "raises an error if the array is empty" do
        expect {[].my_uniq}.to raise_error("array is empty")
    end

    it "should not modify the original" do
        duped_arr = array.dup
        duped_arr.my_uniq
        expect(duped_arr).to eq(array)
    end
end

describe "#two_sum" do
    let(:array) { [-1,0,2,-2,1] }

    it "returns pair indices that add up to zero" do
        expect(array.two_sum).to eq([[0,4], [2,3]])
    end

    it "raises an error if the array is empty" do
        expect {[].two_sum}.to raise_error("array is empty")
    end

    it "should not modify the original" do
        duped_arr = array.dup
        duped_arr.two_sum
        expect(duped_arr).to eq(array)
    end
end

describe "#my_transpose" do
    
end