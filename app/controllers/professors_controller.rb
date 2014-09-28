class ProfessorsController < ApplicationController
  def index
    @professors = Professor.all
  end

  def new
    @professor_form = ProfessorForm.new
  end

  def create
    @professor_form = ProfessorForm.new(professor_params)

    respond_to do |format|
      if @professor_form.save
        format.html {redirect_to professors_url, notice: 'Professor created successfully.' }
      else
        format.html { render :new }
      end
    end

  end

  private
    def professor_params
      params.require(:professor).permit(:prof_name, :prof_subject,
        :uni_name, :uni_city, :uni_state, :paper_title, :paper_date,
        :paper_publication)
    end
end
