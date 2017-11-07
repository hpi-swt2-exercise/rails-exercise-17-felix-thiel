require 'rails_helper'

describe "New paper page", type: :feature do

    it "should render without error" do
        visit new_paper_path
    end

    it "should not validate without title" do
        visit new_paper_path
        fill_in "paper_title", :with => ''
        fill_in "paper_venue", :with => 'Mind 49: 433-460'
        fill_in "paper_year", :with => 1950
        find('input[type="submit"]').click

        expect(page).to have_text("Title can't be blank")
    end

    it "should not validate without venue" do
        visit new_paper_path
        fill_in "paper_title", :with => 'About nothing and everything'
        fill_in "paper_venue", :with => ''
        fill_in "paper_year", :with => 1950
        find('input[type="submit"]').click

        expect(page).to have_text("Venue can't be blank")
    end

    it "should not validate without year" do
        visit new_paper_path
        fill_in "paper_title", :with => 'About nothing and everything'
        fill_in "paper_venue", :with => 'Mind 49: 433-460'
        find('input[type="submit"]').click

        expect(page).to have_text("Year can't be blank")
    end
end