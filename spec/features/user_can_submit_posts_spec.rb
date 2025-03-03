require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them with date" do
    current_date = Time.now.strftime("%A %d %b")
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"

    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content("Posted today at")
  end
end
