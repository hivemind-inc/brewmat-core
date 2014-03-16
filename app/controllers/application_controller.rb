class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "grndz", password: "h4mm3r!" if Rails.env.stage?

  protect_from_forgery with: :exception

  def stay_in_touch
    ml = MailingList.new(email: params[:email])
    if ml.save
      render nothing: true, json: {success: true}
    else
      render nothing: true, json: {success: false, errors: ml.errors}
    end
  end
end
