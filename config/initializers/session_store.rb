# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ModelTest_session',
  :secret      => '04bd46f44f15f062a3de01b5757db6264e213158cedb4f9b989bb21b7549c1abe98866818647ecd08d22f974a2606d2270319b9c5460626d582cf90204b903ca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
