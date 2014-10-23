class SubmissionMailer < ActionMailer::Base
  include SendGrid
  default from: "thedigitalmusicclub@gmail.com"

  def submission_email
    mail( :to => "dmc@mailinator.com",
        :subject => 'New Playlist Submission' )
  end
end