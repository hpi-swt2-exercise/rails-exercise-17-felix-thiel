require 'rails_helper'

describe "Paper detail page", type: :feature do
    it "should have the authors name" do
        author = FactoryGirl.create :author
        paper = FactoryGirl.create :paper

        visit paper_path(paper)

        expect(page).to have_text(paper.authors.first.name)
    end
end