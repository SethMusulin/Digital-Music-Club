require 'rails_helper'

feature "User sign up" do
  scenario "user can add him or herself to the club with e-mail address" do
    Playlist.create!(creator:"Dave Harris", name:"test list", source:"thesource", picture:"jpg.jpg")

    visit '/'

    # must not be empty
    fill_in "user[email]", with: ""

    click_button ""

    expect(User.all.length).to eq(0)

    fill_in "user[email]", with: "joe@example.com"

    click_button ""

    expect(User.first.email).to eq("joe@example.com")
    expect(User.all.length).to eq(1)

    # must be unique
    fill_in "user[email]", with: "joe@example.com"

    click_button ""

    expect(User.all.length).to eq(1)
  end

end