class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
		
	end

	def home
		
	end
  def new
  	@user = User.new
  end

   def secret
   
   end

   def create
  @user = User.new(user_params)
 
  if @user.save
    redirect_to @user
  else
    render 'secret'
  end
end

private
 def user_params
 	params.require(:user).permit(:email, :password)
 end
   

   
end
