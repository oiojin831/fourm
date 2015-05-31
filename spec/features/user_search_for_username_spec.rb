require "rails_helper"

RSpec.feature "User search for username" do
  scenario "Check if the search form in exist" do
    visit root_path

    expect(page).to have_css "label", text: "Search"
  end

  scenario "User search for username" do
    visit root_path

    fill_in "Search", with: "corzej"
    click_on('Search')
    expect(page).to have_css "h1", text: "menu"
  end
end
