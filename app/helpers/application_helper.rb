module ApplicationHelper
  def h1_tag(content)
    return "<h1>#{content}</h1>".html_safe
  end
  
  # def pictures_url
  #   return "http://localhost:3000/pictures"
  # end
  # 
  # def new_picture_url
  #   return "http://localhost:3000/pictures/new"
  # end
  # 
  # def picture_url(id)
  #   return "http://localhost:3000/pictures/#{id}"
  # end
end
