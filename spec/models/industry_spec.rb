require 'rails_helper'

RSpec.describe Industry, type: :model do
  let(:industry) { Industry.create(name: 'Automotive') }
  let(:car) do
    Car.create(name: 'Ford', model: 'Focus', engine: '1.6', image: 'image.jpg', price: '100', seats: '5', year: '2020',
               industry_id: industry.id)
  end

  describe 'validations' do
    context 'when all attributes are valid' do
      it 'is valid' do
        expect(industry).to be_valid
      end
    end
  end

  describe 'associations' do
    context 'when car is associated' do
      it 'is associated' do
        expect(industry.cars).to eq([car])
      end
    end
  end
end
