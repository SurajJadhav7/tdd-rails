require "rails_helper"

feature "User creates Todo" do
  scenario "successfully" do
    sign_in
    
    click_on "New Todo"
    fill_in "Title", with: "Buy milk"
    click_on "Create Todo"

    expect(page).to have_css ".todo li", text: "Buy milk"
  end
end