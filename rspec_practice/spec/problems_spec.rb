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
    let(:array) { [[0,1,2], [3,4,5], [6,7,8]] }
    let(:array1) { [[0,1,2], [3,4,5,10], [6,7,8]] }
    it "converts rows into colums" do 
        expect(array.my_transpose).to eq([[0,3,6],[1,4,7], [2,5,8]])
    end

    it "should raise an error if the rows have different lengths" do
        expect { array1.my_transpose }.to raise_error("unequal lengths error")
    end
end

describe "#stock_picker" do
    let (:array) { [9, 13, 6, 1000, 25, 3] }

    it "returns pair of indices of highest profit" do
        expect(array.stock_picker).to eq([2,3])
    end

    it "index of highest value cannot be less than index of lowest value" do
        expect(array.stock_picker).not_to eq([3,5])
    end

    it "should raise error if array is empty or length is 1" do 
        expect { [].stock_picker }.to raise_error("There are no days")
        expect { [1].stock_picker }.to raise_error("There is only 1 day")
    end
end

