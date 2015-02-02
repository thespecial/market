require 'rubygems'
require 'taza/page'

module Market
  class HomePage < ::Taza::Page

  	filter :title_defined?, :search_module

  	page_module :search_module do 
  	  element(:search_field) {browser.text_field(:id => 'header-search')}
  	  element(:search_button) {browser.button(:index => 1)}
  	end
  		
  	def title_defined?
  	   !browser.title.nil?
  	end
  
  end
end
