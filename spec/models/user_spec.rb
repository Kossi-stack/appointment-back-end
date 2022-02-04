require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Bob', email: 'bob@gmail.com', password: 'password')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end
end  