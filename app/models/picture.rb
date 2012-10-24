class Picture < ActiveRecord::Base
  attr_accessible :title, :url, :caption
  
  validates_presence_of :url
  
end
