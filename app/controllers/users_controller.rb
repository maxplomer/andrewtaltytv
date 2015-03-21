class UsersController < ApplicationController

  def changevideo
    @user = current_user
    @user.update_attributes(youtube_id: params["youtube_id"])
    redirect_to dashboard_url
  end

end
