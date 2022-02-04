require 'rails_helper'

RSpec.describe Car, type: :model do
  let(:user) { User.create(name: 'Bob', email: 'bob@gmail.com', password: 'password') }
  let(:car) { Car.create(name: 'Ford', model: 'Focus', engine: '1.6', image: 'image.jpg', price: '100', seats: '5', year: '2010', user: user) }

  it 'is valid with valid attributes' do
    expect(car).to be_valid
  end

  it 'is not valid without a name' do
    car.name = nil
    expect(car).to_not be_valid
  end
end