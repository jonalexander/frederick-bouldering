# commentsController

class CommentsController < ApplicationController
	def create
		@problem = Problem.find(params[:problem_id])
		@comment = @problem.comments.create(comment_params)
		redirect_to problem_path(@problem)
	end

	def destroy
		@problem = Problem.find(params[:problem_id])
		@comment = @problem.comments.find(params[:id])
		@comment.destroy
		redirect_to problem_path(@problem)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end