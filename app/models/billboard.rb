class Billboard < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :title, presence: true
  validates :subtext01, presence: true
  validates :subtext02, presence: true
  validates :color_scheme, presence: true
  validates :anim_option, presence: true
end
