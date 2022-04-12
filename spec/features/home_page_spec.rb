require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do

  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end

  scenario "The visitor should see project title" do
    visit root_path
    expect(page).to have_text("Title")
  end

  scenario "The visitor should see project description" do
    visit root_path
    expect(page).to have_text("Description")
  end
end

