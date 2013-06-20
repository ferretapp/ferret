require 'spec_helper'

describe "StaticPages" do

  describe "Homepage" do
    it "should have links to relevant pages" do
      visit '/'
      expect(page).to have_link("About", href: about_path)
      expect(page).to have_link("Sign In", href: sign_in_path)
      expect(page).to have_link("Sign Up", href: join_path)
      expect(page).to have_link("Contact", href: contact_path)
      expect(page).to have_link("Help", href: help_path)
    end
  end
  
end
