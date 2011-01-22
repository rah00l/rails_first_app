# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_menu_session',
  :secret      => 'e1fd90bdccec5186862cf826fb01c083c2e8e1dc44ff07eccfb6e991ce2a9deb90a8b1f886cf16f5b591f813e021e1d41acfc88022d3b3dcdd8a42ed75e81855'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
