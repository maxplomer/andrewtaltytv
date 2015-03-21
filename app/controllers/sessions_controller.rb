class SessionsController < ApplicationController


  before_action :already_signed_in!, only: [:new]

  def create
    # signs a user in
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user.nil?
      # no user with the given name!
      render :new
    else
      # sign the user in
      log_in!(@user)
      redirect_to dashboard_url
    end
  end

  def destroy
    # sign a user out
    log_out!
    redirect_to admin_url
  end

  def new
    # presents a login form
    render :new, layout: "admin"
  end

end
