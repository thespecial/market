require 'spec_helper'
require 'market'

describe "Home page search" do
  it 'it types query, selects categories and verifies element exists' do 	
	Market.new do |site|
	  site.search('Nokia')
	  site.select_category('Мобильные телефоны')
	  model = site.model_exists('Nokia 8600 Luna')
	  model.should == true
    end
  end
end
