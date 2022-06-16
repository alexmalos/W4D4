require "TDD.rb"

describe "remove dups" do
    arr = [1,1,1,2,2,3]

it "removes all duplicate elements from an array" do
    expect(my_uniq(arr)).to eq (arr.uniq)
end
end

describe "two sum" do
    arr = [-1, 0, 2, -2, 1]

    it "finds all pair that sum to zero do" do
    expect(two_sum(arr)).to eq ([[0, 4], [2, 3]])
    end

end

describe "my transpose" do
    rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

  it "inverts all indices of an array" do
    expect(my_transpose(rows)).to eq(rows.transpose)
  end
end


describe "Stock Picker" do
    stock_arr = [1,8,5,2,1,9,3,2, 0.1, 0,3,4,9, 8,6,2,1]
    it "returns the most profitable pair of days to buy/ sell" do 
        expect(stock_picker(stock_arr)).to eq([9,12])
    end
end