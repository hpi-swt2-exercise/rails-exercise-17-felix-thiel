require 'rails_helper'

describe "papers index page", type: :feature do
    it "should render" do
        visit papers_path
    end

    it "should show title, venue and year" do
        paper = FactoryGirl.create :paper
        visit papers_path

        expect(page).to have_text("COMPUTING MACHINERY AND INTELLIGENCE")
        expect(page).to have_text("Mind 49: 433-460")
        expect(page).to have_text(1950)
    end

    it "should have Destroy link" do
        paper = FactoryGirl.create :paper
        visit papers_path

        expect(page).to have_link("Destroy")
    end

    it "should not destroy the whole application if the destroy link is clicked" do
        paper = FactoryGirl.create :paper
        visit papers_path

        click_on 'Destroy'
    end

    it "should filter by year" do
        paper = FactoryGirl.create :paper
        
        visit papers_path+"?year=#{paper.year+1}"
        expect(page).not_to have_text(paper.title)

        visit papers_path+"?year=#{paper.year}"
        expect(page).to have_text(paper.title)
    end
end