class ProfessorsController < ApplicationController
  def index
  end

  def new
    @professor_form = ProfessorForm.new
  end
end
