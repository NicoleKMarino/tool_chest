require "rails_helper"


describe "Check tool index", :type => :feature do
  scenario "User looks at the tools they created" do
    # visit tools_path
    within(".tool_info") do
      expect(page).to have_content("screwdriver")
      end
    end
  end
