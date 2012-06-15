require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "signup page" do
    let( :section_name ) { "Sign Up" }
    before  { visit signup_path }

    it { should have_selector 'h1', text: section_name }
    it { should have_selector 'title', text: full_title( section_name ) }
  end

end
