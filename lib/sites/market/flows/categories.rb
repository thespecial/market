require 'rubygems'

module Market
  class Market < ::Taza::Site
    def select_category(category)
      links = categories_page.top5.links
      clicked = false
      
      links.each do |link|
      	if (link.text.to_s == category) && link.present?
      	   link.click 
      	   clicked = true
      	   break
      	end
      end 

      raise 'Category #{category} wasn\'t find on this page' if !clicked 
    end
  end
end
