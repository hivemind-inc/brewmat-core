class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "grndz", password: "h4mm3r!" if Rails.env.stage?

  protect_from_forgery with: :exception

  def stay_in_touch
    if MailingList.new(email: params[:email]).save
      render nothing: true, status: 200, json: {success: true}
    else
      render nothing: true, json: {success: false}
    end
  end
end
