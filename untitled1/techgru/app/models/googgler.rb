class Googgler < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_attached_file :googgler_img, styles: { googgler_index: "250x350>", googgler_show: "425x575>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :googgler_img, content_type: /\Aimage\/.*\z/

end