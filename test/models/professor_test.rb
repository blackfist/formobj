# == Schema Information
#
# Table name: professors
#
#  id            :integer          not null, primary key
#  name          :string
#  subject       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  university_id :integer
#

require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
