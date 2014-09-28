# == Schema Information
#
# Table name: professors
#
#  id         :integer          not null, primary key
#  name       :string
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Professor < ActiveRecord::Base
  belongs_to :university
  has_many :papers
end
