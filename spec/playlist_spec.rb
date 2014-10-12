require 'rails_helper'

feature 'Playlists' do
  scenario 'user can create playlist with grooveshark embedded player source' do

    visit '/playlists/new'

    fill_in "Creator", with: "Dave Harris"
    fill_in "Name", with: "Dave Harris Presents - DMC 1"
    fill_in "Source", with: %{<object width="250" height="250" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="gsPlaylist10157324413" name="gsPlaylist10157324413"><param name="movie" value="http://grooveshark.com/widget.swf" /><param name="wmode" value="window" /><param name="allowScriptAccess" value="always" /><param name="flashvars" value="hostname=grooveshark.com&playlistID=101573244&p=0&bbg=000000&bth=000000&pfg=000000&lfg=000000&bt=FFFFFF&pbg=FFFFFF&pfgh=FFFFFF&si=FFFFFF&lbg=FFFFFF&lfgh=FFFFFF&sb=FFFFFF&bfg=666666&pbgh=666666&lbgh=666666&sbh=666666" /><object type="application/x-shockwave-flash" data="http://grooveshark.com/widget.swf" width="250" height="250"><param name="wmode" value="window" /><param name="allowScriptAccess" value="always" /><param name="flashvars" value="hostname=grooveshark.com&playlistID=101573244&p=0&bbg=000000&bth=000000&pfg=000000&lfg=000000&bt=FFFFFF&pbg=FFFFFF&pfgh=FFFFFF&si=FFFFFF&lbg=FFFFFF&lfgh=FFFFFF&sb=FFFFFF&bfg=666666&pbgh=666666&lbgh=666666&sbh=666666" /><span><a href="http://grooveshark.com/search/playlist?q=DMC%2073%3A%20Prehistoric%20Forests%20%20Seth%20Musulin" title="DMC 73: Prehistoric Forests  by Seth Musulin on Grooveshark">DMC 73: Prehistoric Forests  by Seth Musulin on Grooveshark</a></span></object></object>}
    fill_in "Picture", with: "http://media.tumblr.com/b21d5fe2dc1400312c92dd1782935cb2/tumblr_inline_n3j290fMVX1qjkcg3.jpg"
    click_button "Yo Dave, publish my playlist"

    expect(page).to have_content("Digital Music Club")
    expect(page).to have_css("img", visible: "http://media.tumblr.com/b21d5fe2dc1400312c92dd1782935cb2/tumblr_inline_n3j290fMVX1qjkcg3.jpg")

  end
end