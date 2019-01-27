class AuthenticationController < ApplicationController
 
  skip_before_action :login_required

  def login
    if request.post?
	if user = User.authenticate(params[:username], params[:password])
        self.current_user = user
        redirect_to root_path
      else
        flash.now[:alert] = "Username/password invalid"
      end
    end
  end

end
