class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params) # Not the final implementation!
  	if @user.save
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attribute(user_params)
      # Handle a successful update.
    else
      render 'edit'
    end
  end

  prvate
  
    def user_params
    	params.require(:user).permit(:name, :email, :password,
    																:password_confirmation)
    end
end
