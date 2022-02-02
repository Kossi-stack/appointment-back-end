require 'rails_helper'

RSpec.describe Car, type: :model do
  let(:industry) { Industry.create(:name => "Automotive") }
  let(:car) { Car.create(:name => "Ford", :model => "Focus", :engine => "1.6", :image => "image.jpg", :price => "100", :seats => "5", :year => "2020", :industry_id => industry.id) }
  
  describe "validations" do
    context "when all attributes are valid" do
      it "is valid" do
        expect(car).to be_valid
      end
    end
  end

  describe "associations" do
    context "when industry is associated" do
      it "is associated" do
        expect(car.industry).to eq(industry)
      end
    end
  end
end