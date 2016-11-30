class BeltApplicationsController < ApplicationController
  around_action :require_no_pending_applications

  def new
    @application = BeltApplication.new
  end

  def create
    application_params = params.require(:belt_application).permit(
      :picture_proof,
    )

    @application = BeltApplication.new(application_params)
    @application.user = current_user

    if @application.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def require_no_pending_applications
    if current_user.belt_application.nil?
      yield
    else
      redirect_to root_path
    end
  end
end
