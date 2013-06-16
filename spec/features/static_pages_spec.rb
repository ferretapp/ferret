require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do

    before { visit root_path }

    it { should have_selector('h1', text: 'Ferret') }
    it { should have_title(full_title('')) }
  end

  describe "Help page" do

    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_title(full_title('Help')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Help"
    page.should have_title(full_title('Help'))
    click_link "Home"
    page.should have_title(full_title(''))
    click_link "Sign me up!"
  end
end
