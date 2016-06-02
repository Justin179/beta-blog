class Article < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { large:"600x600>", medium: "300x300>", thumb: "100x100#" }
  #,default_url: "app/assets/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
  validates :user_id, presence: true
end