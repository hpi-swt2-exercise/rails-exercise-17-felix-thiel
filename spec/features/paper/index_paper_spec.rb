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
end