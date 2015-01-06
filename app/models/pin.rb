# == Schema Information
#
# Table name: pins
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  question   :text
#  question1  :text
#  question2  :text
#  question3  :text
#  question4  :text
#

class Pin < ActiveRecord::Base
	belongs_to :user
 
end
