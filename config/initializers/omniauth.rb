Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV.fetch('GITHUB_ID'), ENV.fetch('GITHUB_SECRET'),
    scope: 'user:email'
  provider :facebook, ENV.fetch('APP_ID'), ENV.fetch('APP_SECRET'),
    scope: 'email,public_profile,user_likes',
    client_options: {
      site: 'https://graph.facebook.com/v2.6',
      authorize_url: "https://www.facebook.com/v2.6/dialog/oauth"
    }
end
