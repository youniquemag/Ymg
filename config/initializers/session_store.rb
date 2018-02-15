# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Youniquemag1_session',
  :secret      => '5920b103b102b146adb6dfe4638570d2763c3eb53c882dae33063d43fde3685d400ab6d1eb78c4d9aad3e18f3cb866dfd8c3b39c2da7e9da672e6d5d30ba806f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
