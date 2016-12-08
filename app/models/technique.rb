class Technique < ApplicationRecord
  belongs_to :belt
  has_many :notes

  validates :belt, :name, :topic, :description, presence: true

  enum topic: {
    sugisul: 0,
    joksul: 1,
    danjon_hohupbop: 2,
    ki_doin: 3,
    jahse: 4,
    nakbop: 5,
    su: 6,
    yaksok_daeryon: 7,
    jayu_daeryon: 8,
    hyong: 9,
    gigu_sul: 10,
    kyokpa: 11,
    tuksu_dong_jak: 12,
    hwalyong_sul: 13,
  }

  def youtube_embed_url
    youtube_id = youtube_video_url.match(/[?&]v=(?<url>[^&]*)/)[:url]
    "https://www.youtube.com/embed/#{youtube_id}"
  end
end
