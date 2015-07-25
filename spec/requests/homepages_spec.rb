require 'spec_helper'

describe "Homepages" do
  describe "Home" do

  	it "should have the title 'Demo App | Home' " do
  		visit 'http://localhost:3000/home_pages/home'
		page.should have_selector("title", :text => 'Demo App | Home')
		page.should have_selector("h1", :text => 'Our Demo App')
	end

	it "should not have a custom page title" do
		visit'/home_pages/home'
		page.should_not have_selector ('title', :text => '| Home')

  end

  describe "About" do
		it "should have the title'Demo App | About us' "do

		visit 'http://localhost:3000/home_pages/about'
		page.should have_selector("title", :text => 'Demo App | About us')
        page.should have_selector("h1", :text => 'About us')
		end
	end

describe "Location" do
		it "should have the title'Demo App | Location' "do

		visit 'http://localhost:3000/home_pages/location'
		page.should have_selector("title", :text => 'Demo App | Location')
		page.should have_selector("h1", :text => 'Location')
	end
end

 describe "Contact" do
 	it "should have the title'Demo App | Contact us' "do

		visit 'http://localhost:3000/home_pages/contact'
		page.should have_selector("title", :text => 'Demo App | Contact us')
		page.should have_selector("h1", :text => 'Contact us')
	end
	end
end