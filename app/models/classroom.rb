# == Schema Information
#
# Table name: classrooms
#
#  id         :integer          not null, primary key
#  teacher    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Classroom < ActiveRecord::Base
	has_many :users

end
