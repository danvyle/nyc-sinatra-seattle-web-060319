class Figuretitle < ActiveRecord::Base
  has_many :figures
  has_many :titles
end
