# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

#CSS
Rails.application.config.assets.precompile += %w( compiled/theme.css )
Rails.application.config.assets.precompile += %w( vendor/animate.css )
Rails.application.config.assets.precompile += %w( vendor/flexslider.css )
Rails.application.config.assets.precompile += %w( vendor/font-awesome.min.css )
Rails.application.config.assets.precompile += %w( vendor/font-awesome.css )
Rails.application.config.assets.precompile += %w( vendor/brankic.css )
Rails.application.config.assets.precompile += %w( vendor/isotope.css )
Rails.application.config.assets.precompile += %w( vendor/ionicons.min.css )
Rails.application.config.assets.precompile += %w( vendor/ionicons.css )
Rails.application.config.assets.precompile += %w( vendor/entypo.css )
Rails.application.config.assets.precompile += %w( vendor/flipclock.css )


#JS
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( bootstrap/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( theme.js )
Rails.application.config.assets.precompile += %w( vendor/jquery.flexslider.min.js )
Rails.application.config.assets.precompile += %w( vendor/jquery.validate.min.js )
Rails.application.config.assets.precompile += %w( vendor/jquery.isotope.min.js )
Rails.application.config.assets.precompile += %w( gallery.js )
Rails.application.config.assets.precompile += %w( vendor/flipclock/flipclock.js )
Rails.application.config.assets.precompile += %w( vendor/flipclock/faces/hourlycounter.js )
Rails.application.config.assets.precompile += %w( vendor/sketch.min.js )
Rails.application.config.assets.precompile += %w( vendor/flipclock/libs/base.js )
