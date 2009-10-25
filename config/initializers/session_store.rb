# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_resultats-mtl_session',
  :secret      => 'addcb99467799b27cc6d11900091aa5b1b5a2a2c3de173a6990717c720d3c03fe34e650e81301f6508e056fb31b098e92f93ae2c5345753efc4e85c897099206'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
