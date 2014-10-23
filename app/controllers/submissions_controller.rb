class SubmissionsController < ApplicationController

  def new
  @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      SubmissionMailer.submission_email.deliver
      flash[:notice] = "Your playlist has been submitted. It should show up on the DMC page shortly."
      redirect_to root_path
    end
  end

  def update
    @submission = Submission.find(params[:id])
    @submission.update(published: true)
    if @submission.save
      redirect_to new_playlist_path
    end
  end

  private

  def submission_params
    params.require(:submission).permit(:clubber_name, :album_title, :tracks)
  end
end