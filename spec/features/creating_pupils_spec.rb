require "rails_helper"

feature "Pupils CRUD" do
  scenario "User creates a new pupil" do
    visit "/pupils/new"

    fill_in "First Name", :with => "Julie"
    fill_in "Last Name", :with => "Smith"
    fill_in "Email", :with => "julie@smith.com"
    fill_in "Age", :with => "17"

    click_button "Create"

    expect(page).to have_content("Pupil Julie Smith added.")
  end

  scenario "User edits an existing pupil" do
    pupil = Pupil.create(
      first_name: 'Ted',
      last_name: 'Smith',
      email: 'ted@smith.com',
      age: 15
    )
    visit edit_pupil_path(pupil)

    fill_in "First Name", :with => "Teddy"
    fill_in "Age", :with => "16"

    click_button "Update"

    expect(page).to have_content("Pupil Teddy Smith updated.")
  end
end
