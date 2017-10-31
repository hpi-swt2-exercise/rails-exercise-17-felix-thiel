require 'rails_helper'

describe "authors index page page", type: :feature do
    it "should render" do
        visit authors_path
    end

    it "should have a Link to the new author page" do
        visit authors_path
        expect(page).to have_link("Add author")
    end

    it "should have a Link to the authors pages" do
        # create an author first so that there is something to show
        visit new_author_path
        fill_in "author_first_name", :with => 'Alan'
        fill_in "author_last_name", :with => 'Turing'
        fill_in "author_homepage", :with => 'http://wikipedia.org/Alan_Turing'
        find('input[type="submit"]').click
        
        visit authors_path
        expect(page).to have_link("Show")
    end
end