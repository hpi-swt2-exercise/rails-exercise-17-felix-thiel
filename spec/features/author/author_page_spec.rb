require 'rails_helper'

describe "Author detail page", type: :feature do

    it "should have destroy link" do
        author = FactoryGirl.create :author
        visit authors_path(author)

        expect(page).to have_link("Destroy")   
    end 
end