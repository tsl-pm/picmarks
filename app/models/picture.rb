class Picture < ActiveRecord::Base
  attr_accessible :title, :url, :favorite
  
  validates_presence_of :url
  
end
