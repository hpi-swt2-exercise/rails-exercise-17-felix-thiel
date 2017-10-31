require 'rails_helper'

describe "New author page", type: :feature do
 
 it "should render withour error" do
   visit new_author_path
 end

 it "should have required input fields" do
    expect(page).to have_field("First name")
    expect(page).to have_field("Last name")
    expect(page).to have_field("Homepage")
 end

end