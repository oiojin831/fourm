require "rails_helper"

feature "User visits main page" do
  scenario "User is not signed in" do
    visit root_path

    expect(page).to have_css "h1", text: "FourM"
  end
end
