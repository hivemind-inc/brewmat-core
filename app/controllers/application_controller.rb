class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "grndz", password: "h4mm3r!" if Rails.env.stage?

  protect_from_forgery with: :exception

  def email_subscribe
    @ml = MailingList.new(email: params[:email])

    if @ml.save
      render nothing: true, status: 200, json: { success: true }
    else
      if duplicate_email?(@ml.errors)
        render nothing: true, status: 200, json: { success: true }
      else
        render nothing: true, status: 200, json: { success: false }
      end
    end
  end

  def email_unsubscribe
    MailingList.update(email: params[:email], subscribed: false).save
  end

  def splash
  end

  private

  def duplicate_email?(errors)
    errors.messages[:email].first =~ /already been taken/
  end
end
