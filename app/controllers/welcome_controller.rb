class WelcomeController < ApplicationController
  def index
		if signed_in?
			@belts = current_user.belts
			render "belts/index"
		else
		end
  end
end
