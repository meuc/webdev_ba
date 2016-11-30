module Admin
  class BeltApplicationsController < AdminController
    def index
      @belt_applications = BeltApplication.all
    end

    def approve
      current_user.give_next_belt
      destroy_application

      redirect_to admin_belt_applications_path
    end

    def destroy
      destroy_application
      redirect_to admin_belt_applications_path
    end

    private

    def destroy_application
      BeltApplication.find(params[:id]).destroy!
    end
  end
end
