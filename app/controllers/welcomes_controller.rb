class WelcomesController < ApplicationController
  def index
  	@students = Student.all
  end
end
