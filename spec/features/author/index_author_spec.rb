require 'rails_helper'

describe "authors index page page", type: :feature do
    it "should render" do
        visit_authors_path
    end
end