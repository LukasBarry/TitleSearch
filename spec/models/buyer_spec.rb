require 'rails_helper'

RSpec.describe Buyer, type: :model do
  it "doesn't allow a owner's name to be nil" do
     buyer = FactoryGirl.build(:buyer, current_owner: nil)
     expect(buyer).to_not be_valid
   end
  it "doesn't allow a borrower's name to be nil" do
    buyer = FactoryGirl.build(:buyer, borrower: nil)
    expect(buyer).to be_invalid
  end
  it "doesn't allow address number to be nil" do
    buyer = FactoryGirl.build(:buyer, property_address_number: -1)
    expect(buyer).to be_invalid
  end
  it "doesn't allow street name to be nil" do
    buyer = FactoryGirl.build(:buyer, property_address_street: nil)
    expect(buyer).to be_invalid
  end
end
