require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do

  scenario "The visitor should see 'Projects'" do
    visit root_path
    expect(page).to have_text("Projects")
  end

  scenario "The visitor should see 'image' column" do
    visit root_path
    expect(page).to have_text("Image")
  end

  scenario "The visitor should see 'Description' column" do
    visit root_path
    expect(page).to have_text("Description")
  end

  scenario "The visitor should see 'Home' button" do
    visit root_path
    expect(page).to have_text("Home")
  end

  scenario "The visitor should see 'New Project' button" do
    visit root_path
    expect(page).to have_text("New Project")
  end
end

