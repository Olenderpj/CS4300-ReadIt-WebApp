# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )


# !!!!! --- Ensure that the server is restarted after modifying this file--- !!!!!

Rails.application.config.assets.precompile += %w( base.scss )
Rails.application.config.assets.precompile += %w( index.scss )
Rails.application.config.assets.precompile += %w( registration.scss )
Rails.application.config.assets.precompile += %w( calendar.css )
Rails.application.config.assets.precompile += %w( readMore.scss )
Rails.application.config.assets.precompile += %w( books.scss )
