# == Schema Information
#
# Table name: papers
#
#  id           :integer          not null, primary key
#  title        :string
#  publication  :string
#  date         :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  professor_id :integer
#

class Paper < ActiveRecord::Base
  belongs_to :professor
end
