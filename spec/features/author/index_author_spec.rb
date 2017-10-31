require 'rails_helper'

describe "authors index page page", type: :feature do
    it "should render" do
        visit authors_path
    end
end