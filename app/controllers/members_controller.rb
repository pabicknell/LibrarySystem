class MembersController < ApplicationController
 def index
	@members = Member.all
  end
  def show
	@member = Member.find(params[:id])
  end
  def new
  end
  def create
	@member = Member.new(member_params)
	
	@member.save
	redirect_to @member
  end
  def update
	@member = Member.find(params[:id])
	
	if @member.update(member_params)
		redirect_to @member
	else
		render 'edit'
	end
  end
    private
	def member_params
		params.require(:member).permit(:name, :email)
	end
end
