# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_moneyhole_session',
  :secret      => 'a441b72d7d8c920fa7a64c0800c7ba17b07b3dcdcf4738d8cca21fb1621d675ac7f9daa89b261785c6ee02922acd799453d638395dcc7583422393e8b168ac28'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
