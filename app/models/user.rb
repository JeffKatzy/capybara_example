# == Schema Information
#
# Table name: users
#`
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

class User < ActiveRecord::Base

  has_secure_password

  validates :firstname, presence: true, length: 2..50
  validates :lastname, presence: true, length: 2..50
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :password, presence: true, confirmation: true, length: { minimum: 8 }

  def age
    # Time.current.year - self.birthday.year
    ((Time.current - self.birthday)/(60*60*24*365)).to_i
  end
  #receives_discount
  
end
