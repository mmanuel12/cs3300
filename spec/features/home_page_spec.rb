require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do

  scenario "The visitor should see Sign up" do
    visit root_path
    expect(page).to have_text("Sign up")
  end

  scenario "The visitor should see project title" do
    visit root_path
    expect(page).to have_text("Log in")
  end

  scenario "The visitor should see Remember me" do
    visit root_path
    expect(page).to have_text("Remember me")
  end
end

