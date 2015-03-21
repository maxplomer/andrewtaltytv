class DashboardsController < ApplicationController

  before_action :require_signed_in!

  def show
  	render :show, layout: "admin"
  end

end
