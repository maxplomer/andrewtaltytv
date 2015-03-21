class StaticPagesController < ApplicationController

  def home
  	@youtube_id = User.first.youtube_id
  end

end
