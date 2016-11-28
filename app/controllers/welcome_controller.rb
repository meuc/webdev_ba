class WelcomeController < ApplicationController
  def index
    if signed_in?
      @belts = Belt.all
      render "belts/index"
    else
    end
  end
end
