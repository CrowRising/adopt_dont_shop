class Admin::ApplicationsController < ApplicationController
  def show
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])
    if params[:pet_status] == "approved"
      @application.update(status: "Approved")
      @application.save
    redirect_to "/admin/applications/#{@application.id}"
  end
end