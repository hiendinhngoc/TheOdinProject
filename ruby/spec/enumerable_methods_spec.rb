require 'enumerable_methods.rb'

describe Enumerable do
	include Enumerable

	let(:base_array) {[1,2,3,4,5]}

	describe "#my_each" do
		it "returns the original array" do 
			expect(base_array.my_each {|e| e}).to eql(base_array)
		end
	end

	describe "#my_select" do
		it "returns the required element" do
			expect(base_array.my_select {|e| e.even?}).to eql([2,4])
		end
	end

	describe "#my_all?" do
		it "returns false if one element is false" do
			expect(base_array.my_all? {|e| e > 3}).to eql(false)
		end
	end

	describe "#my_any?" do
		it "returns true if one element is true" do
			expect(base_array.my_any? {|e| e.odd?}).to eql(true)
		end
	end

	describe "#my_none" do
		it "returns true if no element satisfy the condition" do
			expect(base_array.my_none? {|e| e > 10}).to eql(true)
		end
	end

	describe "#my_count" do
		it "returns numbers of element" do
			expect(base_array.my_count).to eql(5)
		end
	end
end