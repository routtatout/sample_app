module ApplicationHelper

  def full_title( page_title )
    base_title = "Tutorial Sample App"
    base_title += " | #{page_title}"  if !page_title.blank?
    base_title
   end 
end
