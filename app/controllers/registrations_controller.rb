class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.create_with_password(sign_up_params)
    if @user.save!
      redirect_to root_path, notice: 'Votre candidature a été envoyée. Merci!'
    else
      flash[:alert] = "Oups! Une erreur est survenue."
      redirect_to root_path
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :message, :email, :password)
  end

end
