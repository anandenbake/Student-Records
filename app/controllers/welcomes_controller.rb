class WelcomesController < ApplicationController
  def index
  	@students = Student.search(params[:search])

  	respond_to do |format|
  		format.html
  		format.csv { send_data @students.to_csv}
  		format.json { render json: StudentsDatatable.new(view_context) }

  	end
  end
end



  