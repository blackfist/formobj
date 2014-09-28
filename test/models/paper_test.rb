# == Schema Information
#
# Table name: papers
#
#  id          :integer          not null, primary key
#  title       :string
#  publication :string
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PaperTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
