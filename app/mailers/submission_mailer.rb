class SubmissionMailer < ActionMailer::Base
  include SendGrid
  default from: "thedigitalmusicclub@gmail.com"

  def submission_email
    mail( :to => "thedigitalmusicclub@gmail.com",
        :subject => 'New Playlist Submission' )
  end
end