# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
IldarCapstoneRubyOnRails::Application.config.secret_token = 'c7d61b00ce6fb6cb15aa6de49cc5c6129ae28c16ef0ebe8fc9e7bfa0988d3fe6d668b57c8824766bfca7f660e85755c0b337fb35c6c3cf46a3a87a2df36bb49c'
