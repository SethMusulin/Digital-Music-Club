require 'rails_helper'

describe "Submission" do
  it "must have a clubber name" do
    submission = Submission.new(clubber_name: "Tester", album_title: "Test Album", tracks: "Test tracks")

    submission.clubber_name = ""

    expect(submission).to_not be_valid
  end
  it "must have an album name" do
    submission = Submission.new(clubber_name: "Tester", album_title: "Test Album", tracks: "Test tracks")

    submission.album_title = ""

    expect(submission).to_not be_valid
  end
  it "must have tracks" do
    submission = Submission.new(clubber_name: "Tester", album_title: "Test Album", tracks: "Test tracks")

    submission.tracks = ""

    expect(submission).to_not be_valid
  end
end
