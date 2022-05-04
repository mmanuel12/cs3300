require 'rails_helper'

RSpec.feature "Projects", type: :feature do
    scenario "The visitor should see 'Projects'" do
        visit new_user_registration_path
        expect(page).to have_text("Email")
      end

      scenario "The visitor should see 'Projects'" do
        visit projects_path
        expect(page).to have_text("Projects")
      end

end



