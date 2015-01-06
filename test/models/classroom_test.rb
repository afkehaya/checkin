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

require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
