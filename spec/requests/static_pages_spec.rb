require 'spec_helper'

describe "Static pages" do
  let( :base_title ) { "Tutorial Sample App |" }
    
  describe "Home page" do
    let( :section_name ) { "About" }

    before  do
      visit '/static_pages/home'
    end

     it "should have the content 'Sample App'" do
      page.should have_selector 'h1', :text => 'Sample App'
    end

    it "should have '<%= section_name %>' in the title" do
      page.should have_selector 'title',
          :title => '#{base_title} #{section_name}'
    end
  end

  describe "Help page" do
    let( :section_name ) { "Help" }

    before do
      visit '/static_pages/help'
    end

   it "should have the content '<%= section_name %>'" do
      page.should have_selector 'h1', :text => section_name
    end

    it "should have '<%= section_name %>' in the title" do
      page.should have_selector 'title',
          :title => '#{base_title} #{section_name}'
    end
  end 
  
  describe "About page" do
    let( :section_name ) { "About" }
    
    before do
      visit '/static_pages/about'
    end

    it "should have the content '<%= section_name %>'" do
      page.should have_selector 'h1', :text => section_name
    end

    it "should have '<%= section_name %>' in the title" do
      page.should have_selector 'title',
          :title => '#{base_title} #{section_name}'
    end
  end

  describe "Contact page" do
    let( :section_name ) { "Contact" }

    before do
      visit '/static_pages/contact'
    end

    it "should have the content '<%= section_name %>'" do
      page.should have_selector 'h1', :text => section_name
    end

    it "should have '<%= section_name %>' in the title" do
      page.should have_selector 'title',
          :title => '#{base_title} #{section_name}'
    end
  end

end
