class PlaylistMailer < ActionMailer::Base
  include SendGrid
  default from: "thedigitalmusicclub@gmail.com"

  def playlist_email
    mail(:subject => 'The Digital Music Club',
        :to => sendgrid_recipients(User.all.map { |user| user.email }))
  end
end