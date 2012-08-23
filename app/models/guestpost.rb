class Guestpost < ActiveRecord::Base
  attr_accessible :email, :message, :name

  validates :message, :presence => true

end
