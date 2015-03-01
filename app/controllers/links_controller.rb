class LinksController < ApplicationController
  def index


  end

  def create
    @link = Link.create(:user_link => params[:user_link])
    # redirect_to link_path(@link.id)
  end
end
