# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  school     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class School < ActiveRecord::Base
	has_many :classrooms
end
