class UsersController < ApplicationController

  def new
  end

def create

    if User.find_by_email(params[:user][:email])

      flash.now[:danger] = 'Użytkownik o podanym adresie już istnieje!'
      render 'new'

    elsif params[:user][:password] != params[:user][:password_confirmation]

      flash.now[:danger] = 'Hasła są różne!'
      render 'new'

    else

    user = User.new(user_params)

      if user.save
        session[:user_id] = user.id
        redirect_to '/'
      else
        redirect_to '/signup'
      end

    end

end

private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end