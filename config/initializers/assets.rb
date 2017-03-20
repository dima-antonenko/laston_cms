Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( site.css )
Rails.application.config.assets.precompile += %w( site.js )

Rails.application.config.assets.precompile += %w( administrator.css )
Rails.application.config.assets.precompile += %w( administrator.js )
