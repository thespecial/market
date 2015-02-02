require 'rubygems'

module Market
  class Market < ::Taza::Site
    def search(query)
      home_page(:search_module) do |el|
      	el.search_field.set query
      	el.search_button.click
      end
    end
  end
end
