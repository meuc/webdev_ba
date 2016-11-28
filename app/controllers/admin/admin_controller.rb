module Admin
  class AdminController < ApplicationController
    around_action :require_admin

    def require_admin
      if current_user.try(:admin?)
        yield
      else
        redirect_to root_path
      end
    end
  end
end
