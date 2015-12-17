#
class BillboardSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :subtext01, :subtext02, :color_scheme, :anim_option, :user_id
end
