require 'rubygems'
require 'taza/page'

module Market
  class ResultsPage < ::Taza::Page
    
    element(:next) {browser.link(:class => 'b-pager__next')}
    element(:offers) {browser.link(:class => 'page__b-offers__guru')}
    
    filter :offers?, :offers
    
    def offers?
      browser.elements(:class => "b-offers b-offers_type_guru").size > 0
    end

  end
end
