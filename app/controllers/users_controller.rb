class UsersController < Clearance::UsersController
  private

  def user_params
    params[Clearance.configuration.user_parameter].permit(
      :email,
      :password,
      :first_name,
      :last_name,
      :gender,
      :birthdate,
    )
  end
end
