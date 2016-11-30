class BeltApplication < ApplicationRecord
  belongs_to :user

  has_attached_file(
    :picture_proof,
    default_url: "/belt_applications/missing.png",
  )
  validates_attachment_content_type :picture_proof, content_type: /\Aimage\/.*\z/
end
