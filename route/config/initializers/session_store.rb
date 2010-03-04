# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_route_session',
  :secret      => '2f1c6398fc4defed59fae0ce175fe0a6f79fcab0282170339807c034ac7f8c9dcfb4de765f085b791d0136c0d315fb0d969ad7246816fa128d4a3e8710fe24fe'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
