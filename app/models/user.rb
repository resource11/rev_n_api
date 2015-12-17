#
class User < ActiveRecord::Base
  # authentication stores password stuff
  include Authentication

  has_many :billboards


end
