require 'spec_helper'

describe "Static pages" do
  subject { page }
  
  describe "Home page" do
    let( :section_name ) { "Home" }
    before  { visit root_path }

    it { should have_selector 'h1', text: 'Sample App' }
    it { should have_selector 'title', text: full_title( '' ) }
    it { should_not have_selector 'title', text: full_title( section_name )  }
  end

  describe "Help page" do
    let( :section_name ) { "Help" }
    before { visit help_path }

    it { should have_selector 'h1', text: section_name }
    it { should have_selector 'title', text: full_title( section_name ) }
  end 
  
  describe "About page" do
    let( :section_name ) { "About" }
    before { visit about_path }

    it { should have_selector 'h1', text: section_name }
    it { should have_selector 'title', text: full_title( section_name ) }
  end

  describe "Contact page" do
    let( :section_name ) { "Contact" }
    before { visit contact_path }

    it { should have_selector 'h1', text: section_name }
    it { should have_selector 'title', text: full_title( section_name ) }
  end

end
