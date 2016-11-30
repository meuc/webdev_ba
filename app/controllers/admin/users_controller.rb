module Admin
  class UsersController < AdminController
    def index
      @users = User.all
    end

    def give_user_next_belt
      user = User.find params[:user_id]
      user.give_next_belt

      redirect_to admin_users_path
    end
  end
end
