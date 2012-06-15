require 'spec_helper'

describe "Static pages" do
  subject { page }
  
  shared_examples_for "all static pages" do
    it { should have_selector 'h1', text: section_name }
    it { should have_selector 'title', text: full_title( section_name ) }
  end

  describe "Home page" do
    let( :section_name ) { "Sample App" }
    before  { visit root_path }

    it { should have_selector 'h1', text: section_name }
    it { should have_selector 'title', text: full_title( "" ) }
    it { should_not have_selector 'title', text: full_title( "Home" )  }
  end

  describe "Help page" do
    let( :section_name ) { "Help" }
    before { visit help_path }

    it_should_behave_like "all static pages"
  end 
  
  describe "About page" do
    let( :section_name ) { "About" }
    before { visit about_path }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    let( :section_name ) { "Contact" }
    before { visit contact_path }

    it_should_behave_like "all static pages"
  end

  it "should have links to all the pages in the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title( 'About' )
    click_link "Help"
    page.should have_selector 'title', text: full_title( 'Help' )
    click_link "Contact"
    page.should have_selector 'title', text: full_title( 'Contact' )
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title( 'Sign Up' )
    click_link "sample app"
    page.should have_selector 'title', text: full_title( '' )
  end

end
