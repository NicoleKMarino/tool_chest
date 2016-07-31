require "rails_helper"


describe "Delete a toool" do
  scenario "user wants to delete a tool" do
    Tool.create(Name:"Axe", price:12.34, quantity:12)
    visit tool_path(Tool.first)
    expect(page).to have_content("Axe")
    click_on "Delete"
    expect(current_page).to eq(tools_path)
    within(".tool_info") do
      expect(page).to have_no_content("Axe")
  end
