require 'rails_helper'

feature "Submissions" do
  scenario "user can submit potential playlist" do
    Playlist.create!(creator:"Dave Harris", name:"test list", source:"thesource", picture:"jpg.jpg")

    visit root_path

    click_link "Create Clubber Playlist"
    fill_in "Clubber Name", with: "Dave Harris"
    fill_in "Album Title", with: "Dave Harris Presents - DMC 1"
    fill_in "Tracks", with: "1. Grimes - Oblivion\n 2. Cut Copy - Lights and Music"
    click_button "Submit Playlist"

    expect(page).to have_content "Your playlist has been submitted"

    # new submission shows up on playlist new page and can be removed
    visit '/playlists/new'

    expect(page).to have_content "Recent Playlist Submissions"
    expect(page).to have_content "Dave Harris"
    expect(page).to have_content "Dave Harris Presents - DMC 1"
    expect(page).to have_content "1. Grimes - Oblivion\n 2. Cut Copy - Lights and Music"
    click_button "Remove"
    expect(page).to_not have_content "Dave Harris Presents - DMC 1"

  end

end