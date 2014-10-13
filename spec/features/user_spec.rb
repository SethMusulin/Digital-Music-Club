require 'rails_helper'

feature "User sign up" do
  scenario "user can add him or herself to the club" do
    visit '/'

    fill_in "user[email]", with: "joe@example.com"

    click_button ""

    expect(User.first.email).to eq("joe@example.com")
    expect(User.all.length).to eq(1)
  end
  scenario "user cannot be created with blank email" do
    visit '/'

    fill_in "user[email]", with: ""

    click_button ""

    expect(User.all.length).to eq(0)
  end
end