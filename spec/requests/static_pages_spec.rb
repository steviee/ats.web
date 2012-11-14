require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'ATS.WEB'" do
      visit root_path
      page.should have_content('ATS.WEB')
    end
    it "should have the base title" do
      visit root_path
      page.should have_selector('title',
                        :text => "ATS.WEB")
    end
    it "should not have the right title" do
      visit root_path
      page.should_not have_selector('title', :text => "ATS.WEB | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text => "ATS.WEB | Help")
    end
  end

  describe "Contact page" do
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    :text => "ATS.WEB | Contact")
    end
  end

  describe "About page" do
    it "should have the content 'About ATS'" do
      visit about_path
      page.should have_content('About ATS')
    end
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', :text => "ATS.WEB | About")
    end
  end
end