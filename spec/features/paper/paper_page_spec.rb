require 'rails_helper'

describe "Paper detail page", type: :feature do
    it "should have the authors name" do
        author = FactoryGirl.create :author
        paper = FactoryGirl.create :paper
        #paper.author = author

        visit papers_path(paper)

        expect(page).to have_text("mystring mystring")
    end
end