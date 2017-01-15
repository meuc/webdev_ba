module Admin
  class TechniquesController < AdminController
    def index
      @belts = Belt.all
      @matching_techniques = if params[:query].present?
                               Technique.search_for(params[:query]).map(&:id)
                             else
                               Technique.all.pluck(:id)
                             end
    end

    def new
      @technique = Technique.new
    end

    def create
      @technique = Technique.new(
        belt: Belt.find(technique_params.fetch(:belt_id)),
        name: technique_params.fetch(:name),
        long_name: technique_params.fetch(:long_name),
        youtube_video_url: technique_params.fetch(:youtube_video_url),
        description: technique_params.fetch(:description),
        topic: technique_params.fetch(:topic).to_i,
      )

      if @technique.save
        redirect_to admin_techniques_path
      else
        render :new
      end
    end

    def edit
      @technique = Technique.find(params[:id])
    end

    def update
      @technique = Technique.find(params[:id])

      if @technique.update(technique_params)
        redirect_to admin_techniques_path
      else
        render :edit
      end
    end

    private

    def technique_params
      params.require(:technique).permit(
        :belt_id,
        :name,
        :long_name,
        :topic,
        :description,
        :youtube_video_url,
      )
    end
  end
end
