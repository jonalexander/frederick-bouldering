class ProblemsController < ApplicationController  
  
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  # Other authentication methods are available for Rails 
  # applications. Two popular authentication add-ons for 
  # Rails are the Devise rails engine and the Authlogic gem, 
  # along with a number of others.

  def index
  	@problems = Problem.all
  end

  def show
    @problem = Problem.find(params[:id])	
  end

  def new
  	@problem = Problem.new
  end

  def edit
    @problem = Problem.find(params[:id])
  end

  def create
  	@problem = Problem.new(problem_params)

    if @problem.save
    	redirect_to @problem
    else
    	render 'new'
    end
  end #close create

  def update
    @problem = Problem.find(params[:id])

    if @problem.update(problem_params)
    	redirect_to @problem
    else
    	render 'edit'
    end
  end

  def destroy
  	@problem = Problem.find(params[:id])
  	@problem.destroy

  	redirect_to problems_path
  end

  private 
    def problem_params
      params.require(:problem).permit(:problem_name, :problem_grade, :main_area, :description)
    end
end	

