require 'rubygems'

module Market
  class Market < ::Taza::Site

    def next_page?
      results_page.next.exists?
    end      

    def next_page
      results_page.next.click
    end

    def model_exists(model)
      while !browser.links(:class => 'b-offers__name').collect(&:text).include? model
        next_page? ? next_page : break
      end
      browser.text.include? model
    end

  end
end
