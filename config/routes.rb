GrndzApp::Application.routes.draw do
  root to: 'application#splash'

  post '/email_subscribe',   to: 'application#email_subscribe'
  post '/email_unsubscribe', to: 'application#email_unsubscribe'
end
