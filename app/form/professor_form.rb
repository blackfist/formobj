class ProfessorForm
  include include ActiveModel::Model

  attr_accessor :prof_name, :prof_subject,
    :uni_name, :uni_state, :uni_city, :paper_title, :paper_date,
    :paper_publication

  validates :prof_name, presence: true
  validates :uni_name, presence: true
  validates :paper_title, presence:true

  def save
    if valid?
      persist!
      true
    else
      false
    end
  end

  private
    def persist!
      @uni = University.create!(name: uni_name, city:uni_city, state: uni_state)
      @pro = @uni.professors.create!(name: prof_name, subject: prof_subject)
      @pap = @pro.papers.create!(title: paper_title, date:paper_date, publication: paper_publication)
    end

end
