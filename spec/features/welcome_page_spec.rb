require 'rails_helper'

describe "Main welcome page" do
  it "allows user to see playlist on side toggle", js: true do
    play1 = Playlist.create!(creator: "Dave Harris", name: "test 1", source: "thesource", picture: "http://media.tumblr.com/9cf0ab73d9bcf569e32dcdc7c3f96774/tumblr_inline_mkdwnlkuBT1qz4rgp.jpg")
    play2 = Playlist.create!(creator: "Dave Harris", name: "test 2", source: "thesource", picture: "http://media.tumblr.com/f651b75d010dc8227fd2b2d0e46de05b/tumblr_inline_n32gfzSkA71qjkcg3.jpg")

    visit '/'
    page.driver.browser.manage.window.maximize
    expect(page).to have_content "Digital Music Club"
    expect(page).to have_css('.Pl-title', visible: false)
    first(:css, ".open-menu , img").click

    expect(page).to have_css('.Pl-title', visible: true)

    first(:css, ".close-menu , img").click

    expect(page).to have_css('.Pl-title', visible: false)

  end

  it "allows user to click on albums and change playlist", js:true do
    play1 = Playlist.create!(creator: "Dave Harris", name: "test 1", source: "thesource", picture: "http://media.tumblr.com/9cf0ab73d9bcf569e32dcdc7c3f96774/tumblr_inline_mkdwnlkuBT1qz4rgp.jpg")
    play2 = Playlist.create!(creator: "Dave Harris", name: "test 2", source: "thesource", picture: "http://media.tumblr.com/f651b75d010dc8227fd2b2d0e46de05b/tumblr_inline_n32gfzSkA71qjkcg3.jpg")

    visit '/'
    # page.driver.browser.manage.window.maximize
    find(:css, '.toggle-footer').click

    within('.footer-albums') do
      find(:css, "#open-player:nth-child(2) img ").click
    end

    within('.Pl-title') do
      expect(page).to have_content "test 1"
    end

    expect(page).to have_css("img", visible: "http://media.tumblr.com/9cf0ab73d9bcf569e32dcdc7c3f96774/tumblr_inline_mkdwnlkuBT1qz4rgp.jpg")

  end
end

