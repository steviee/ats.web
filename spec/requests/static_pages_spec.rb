require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path } 
    
    it "should have the content 'ATS.WEB'" do
      page.should have_content('ATS.WEB')
    end
    it "should have the base title" do
      page.should have_selector('title',
                        :text => "ATS.WEB")
    end
    it "should not have the right title" do
      page.should_not have_selector('title', :text => "ATS.WEB | Home")
    end
  end

  describe "Help page" do
    before { visit help_path }
    it "should have the content 'Help'" do
      page.should have_content('Help')
    end
    it "should have the right title" do
      page.should have_selector('title', :text => "ATS.WEB | Help")
    end
  end

  describe "Contact page" do
    before { visit contact_path }
    it "should have the h1 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      page.should have_selector('title',
                    :text => "ATS.WEB | Contact")
    end
  end

  describe "About page" do
     before { visit about_path }
   it "should have the content 'About ATS'" do
      page.should have_content('About ATS')
    end
    it "should have the right title" do
      page.should have_selector('title', :text => "ATS.WEB | About")
    end
  end
end
