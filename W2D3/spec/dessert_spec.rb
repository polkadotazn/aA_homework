require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "victor zhao") }
  let(:red_velvet) { Dessert.new("cake", 25, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect (red_velvet.type).to be("cake")
    end

    it "sets a quantity" do
      expect (red_velvet.quantity).to be_a(25)
    end

    it "starts ingredients as an empty array" do
      expect (red_velvet.ingredients).to be([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cookie", "chocolate", chef)  }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient("flour")
      expect red_velvet.ingredient("flour").to include("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      red_velvet.mix
      expect red_velvet.
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      red_velvet.eat(10)
      expect red_velvet.amount.to eq(15)

    it "raises an error if the amount is greater than the quantity" do
      expect { red_velvet.eat(20) }.to raise_error(ArgumentError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      red_velvet.serve
      expect "Victor Zhao the Great Baker has made 25 cakes!"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      except red_velvet.to receive(:make_more)
    end
  end
end
