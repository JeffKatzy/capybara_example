# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  firstname       :string(255)
#  middlename      :string(255)
#  lastname        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  birthday        :datetime
#

require 'spec_helper'
RSpec.describe User, type: :model do 
  describe '#valid?' do 
    let(:user) { FactoryGirl.build(:user, firstname: firstname)}
    let(:firstname) {'bobby'}

  context 'when the user has all information' do
    
    it 'is valid' do 
      expect(user).to be_valid
    end
  end

  context 'when the user does not have a first name' do 
    let(:firstname) { nil }

    it 'is invalid' do
      expect(user).to_not be_valid
    end
  end
    context 'when the length is too short' do 
      let(:firstname) { 'a' }

      it 'is not valid' do 
        expect(user).to_not be_valid
      end
    end
  end

  describe '#age' do 
    let(:user) { User.new(firstname: 'bobby', lastname: 'schmidt',
     email: 'schmidt@gmail.com', 
     password: '1234maplestreet', birthday: 8.years.ago + 3.months) }

    it 'calculates the age given a birthday' do
      expect(user.age).to eq 7
    end
  end
end