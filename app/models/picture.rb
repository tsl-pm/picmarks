class Picture < ActiveRecord::Base
  attr_accessible :title, :url, :caption
end
