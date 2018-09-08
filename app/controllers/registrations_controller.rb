class RegistrationsController < ApplicationController
  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    if @registration.valid?
      user = @registration.register_user
      session[:user_id] = user.id
      redirect_to user_path(user), notice: "Welcome #{user.name}"
    else
      render :new
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:company_name, :user_name, :user_email, :user_password)
  end
end
