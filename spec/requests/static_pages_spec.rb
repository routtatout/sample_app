require 'spec_helper'

describe "Static pages" do
    
  describe "Home page" do
    before  do
      visit '/static_pages/home'
    end

    it "should have the content 'Sample App'" do
      page.should have_selector( 'h1', :text => 'Sample App' )
    end

    it "should have 'Home' in the title" do
      page.should have_selector( 'title',
          :title => 'Tutorial Sample App | Home' )
    end
  end

  describe "Help page" do
    before do
      visit '/static_pages/help'
    end

    it "should have the content 'Help'" do
      page.should have_selector( 'h1', :text => 'Help' )
    end

    it "should have 'Help' in the title" do
      page.should have_selector( 'title',
          :title => 'Tutorial Sample App | Help' )
    end
  end 
  
  describe "About page" do
    before do
      visit '/static_pages/about'
    end

    it "should have the content 'About'" do
      page.should have_selector( 'h1', :text => 'About' )
    end

    it "should have 'About' in the title" do
      page.should have_selector( 'title',
          :title => 'Tutorial Sample App | About' )
    end
  end 
end
