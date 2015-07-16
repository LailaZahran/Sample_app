require 'spec_helper'

describe "Static Pages" do

	describe "Home Page" do
		it "should have the content'Sample App' "do

		visit 'http://localhost:3000/static_pages/home'
		page.should have_content('Sample App')

		end
	end

	describe "About Page" do
		it "should have the content'About us' "do

		visit 'http://localhost:3000/static_pages/about'
		page.should have_content('About us')

		end
	end
end

