require 'rubygems'
require 'taza/page'

module Market
  class CategoriesPage < ::Taza::Page
    filter :top_block?, :top5links
    
    element(:top5) {browser.div(:class => 'top5categ')}

    def top_block?
      browser.div(:class => 'top5categ').present?
    end
  end
end
