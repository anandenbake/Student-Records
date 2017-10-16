class ResumesController < ApplicationController
	def index
		
	end

	def show
		 @student = Student.find(params[:id])

	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		
		@student = Student.find(params[:id])
			if @student.update(student_params)
				redirect_to 
			else
				render 'edit'
			end
	end


	private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :phonenum, :college_name, :address)
  end
end
