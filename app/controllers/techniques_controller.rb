class TechniquesController < ApplicationController
  def index
		@belt = Belt.find(params[:belt_id])
		
		respond_to do |format|
			format.js {}
		end
  end
	
	def show
		@technique = Technique.find(params[:id])
	end
end
