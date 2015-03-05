Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '9fa6b1dca986ba6a2e58', '779d541b08dc3494c5e7e9dbb535f1d89d040056' 
end
