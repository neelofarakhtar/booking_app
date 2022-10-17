class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
	 if @user.save
      flash[:notice] = "Account created successfully!"
      redirect_to root_path
    else
      flash.now.alert = "Oops, couldn't create account."
      render :new
    end
  end

  def booking
    @bookings = current_user.bookings.order(created_at: :desc)
  end

  def book
    current_user.bookings.create(screening_id: params[:screening_id])
    redirect_to bookings_path
  end

  def cancel_booking
    current_user.bookings.find_by(id: params[:id]).delete
    redirect_to bookings_path
  end

private

  def user_params
    params.require(:user).permit(:email,:password, :name, :gender)
  end
end

