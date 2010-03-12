# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_zoonoms_session',
  :secret => 'd554e950c8fd99f82a65cd360940e5066672aa610c85bda64b3d904089bd25e6763a34d6620a307634d8d0cc4233de5ca7bb36185d0188eb43be8abda25a45c6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
