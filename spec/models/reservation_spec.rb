require 'rails_helper'

RSpec.describe Appointment, type: :model do
  let(:user) { User.create(:name => "John Doe", :email => "john@gmail.com", :password => "123456")}
  let(:car) { Car.create(:name => "Ford", :model => "Focus", :engine => "1.6", :image => "image.jpg", :price => "100", :seats => "5", :year => "2020", :user_id => user.id) }
  let(:appointment) { Appointment.create(status: "pending", start_time: "2018-12-12 12:00:00", end_time: "2018-12-12 13:00:00", user_id: user.id, car_id: car.id) }

  describe "validations" do
    context "when all attributes are valid" do
      it "is valid" do
        expect(user).to be_valid
      end

      it "is valid" do
        expect(car).to be_valid
      end

      it "is valid" do
        expect(appointment).to be_valid
      end
    end
  end

  describe "associations" do
    context "when user is associated" do
      it "is associated" do
        expect(appointment.user).to eq(user)
      end
    end

    context "when car is associated" do
      it "is associated" do
        expect(appointment.car).to eq(car)
      end
    end
  end
end