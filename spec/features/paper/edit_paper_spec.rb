require 'rails_helper'

describe "Paper edit page", type: :feature do

    it "should render without error" do
        paper = FactoryGirl.create :paper
        visit edit_paper_path(paper)
    end
    
    it "should have one select box for author selection" do
        paper = FactoryGirl.create :paper
        visit edit_paper_path(paper)
        
        expect(page).to have_text("Author 1")
        #maybe have_selector?
    end
end