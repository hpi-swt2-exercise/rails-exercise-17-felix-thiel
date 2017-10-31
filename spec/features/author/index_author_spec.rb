require 'rails_helper'

describe "authors index page page", type: :feature do
    it "should render" do
        visit authors_path
    end

    it "should have a Link to the new author page" do
        visit authors_path
        expect(page).to have_link("New Author")
    end
end