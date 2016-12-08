class AddYoutubeVideoUrlToTechniques < ActiveRecord::Migration[5.0]
  def change
    add_column :techniques, :youtube_video_url, :text
  end
end
