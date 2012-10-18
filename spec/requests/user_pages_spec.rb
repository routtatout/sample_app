require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "signup page" do
    before { visit signup_path }

    let( :section_name ) { "Sign Up" }
    let( :submit ) { "Create my Account" }

    describe "should have valid h1 and title" do
      it { should have_selector 'h1', text: section_name }
      it { should have_selector 'title', text: full_title( section_name ) }
    end

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change( User, :count )
      end
      describe "after submission" do
        before { click_button submit }

        it { should have_selector 'h1', text: section_name }
        it { should have_content 'error' }
        it { should have_selector 'div.field_with_errors' }
      end
      describe "with individual errors information" do
        before do
          fill_in "Name",                   with: "Example User"
          fill_in "Email Address",          with: "user@example.com"
          fill_in "Password",               with: "foobar"
          fill_in "Password Confirmation",  with: "foobar"
        end


* Password digest can't be blank
* Name can't be blank
* Email can't be blank
* Email is invalid
* Password can't be blank
* Password is too short (minimum is 6 characters)
* Password confirmation can't be blank
        
      end

    end

    describe "with valid information" do
      before do
        fill_in "Name",                   with: "Example User"
        fill_in "Email Address",          with: "user@example.com"
        fill_in "Password",               with: "foobar"
        fill_in "Password Confirmation",  with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change( User, :count ).by( 1 )
      end
    end
  end

  describe "profile page" do
    let( :user ) { FactoryGirl.create( :user ) }
    let( :section_name ) { user.name }
    before { visit user_path( user ) }

    it { should have_selector 'h1', text: section_name }
    it { should have_selector 'title', text: full_title( section_name ) }
  end

end
