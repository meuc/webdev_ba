module Admin
  class UsersController < AdminController
    def index
      @users = User.all
    end

    def give_user_next_belt
      user = User.find params[:user_id]
      current_belt = user.belts.sort_by_kup.last
      current_belt_index = Belt.all.sort_by_kup.index(current_belt)
      next_belt = Belt.all.sort_by_kup[current_belt_index + 1]

      if next_belt.present?
        user.belts << next_belt
      end

      redirect_to admin_users_path
    end
  end
end
