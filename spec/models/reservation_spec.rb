require 'rails_helper'

RSpec.describe CarAppointmentBackend, type: :model do
  let(:user) { User.create(name: 'Bob', email: 'bob@mail.com', password: 'password') }
  let(:car) { Car.create(name: 'Ford', model: 'Focus', engine: '1.6', image: 'image.jpg', price: '100', seats: '5', year: '2010', user: user) }
  let(:appointment) { Appointment.create(user_id: user.id, car_id: car.id, start_time: '2020-01-01', end_time: '2020-01-01', status: 'pending') }

  it 'is valid with valid attributes' do
    expect(appointment).to be_valid
  end

  it 'is not valid without a user' do
    appointment.user_id = nil
    expect(appointment).to_not be_valid
  end

  it 'is not valid without a car' do
    appointment.car_id = nil
    expect(appointment).to_not be_valid
  end
end