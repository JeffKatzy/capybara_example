# == Schema Information
#
# Table name: gists
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Gist < ActiveRecord::Base
  
end
