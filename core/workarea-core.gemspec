require File.expand_path('../../core/lib/workarea/version', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-core"
  s.version     = Workarea::VERSION::STRING
  s.authors     = ["Ben Crouse"]
  s.email       = ["bcrouse@workarea.com"]
  s.homepage    = "http://www.workarea.com"
  s.license     = 'Business Software License'
  s.summary     = "Core of the Workarea Commerce Platform"
  s.description = "Provides application code, seed data, plugin infrastructure, and other core parts of the Workarea Commerce Platform."

  s.files = `git ls-files -- . ':!:data/product_images/*.jpg'`.split("\n")
  s.required_ruby_version = ['>= 2.5.0', '< 2.7.0']

  s.add_dependency 'bundler', '>= 1.8.0' # 1.8.0 added env variable for secrets
  s.add_dependency 'rails', '~> 6.0.0'
  s.add_dependency 'mongoid', '~> 7.0.0'
  s.add_dependency 'bcrypt', '~> 3.1.10'
  s.add_dependency 'money-rails', '~> 1.13.0'
  s.add_dependency 'mongoid-audit_log', '>= 0.6.0'
  s.add_dependency 'mongoid-document_path', '~> 0.2.0'
  s.add_dependency 'mongoid-tree', '~> 2.1.0'
  s.add_dependency 'mongoid-sample', '~> 0.1.0'
  s.add_dependency 'mongoid-encrypted', '~> 1.0.0'
  s.add_dependency 'elasticsearch', '~> 5.0.1'
  s.add_dependency 'kaminari', '~> 1.2.1'
  s.add_dependency 'kaminari-mongoid', '~> 1.0.0'
  s.add_dependency 'activemerchant', '~> 1.52'
  s.add_dependency 'dragonfly', '~> 1.2.0'
  s.add_dependency 'sidekiq', '~> 6.0.0'
  s.add_dependency 'sidekiq-cron', '~> 1.1.0'
  s.add_dependency 'sidekiq-unique-jobs', '~> 6.0.6' # TODO can we bump to 7 before v3.6 release?
  s.add_dependency 'sidekiq-throttled', '~> 0.11.0'
  s.add_dependency 'geocoder', '~> 1.6.3'
  s.add_dependency 'redis-rack-cache', '~> 2.2.0'
  s.add_dependency 'easymon', '~> 1.4.0'
  s.add_dependency 'image_optim', '~> 0.26.0'
  s.add_dependency 'image_optim_pack', '~> 0.6.0'
  s.add_dependency 'faker', '~> 2.8.0'
  s.add_dependency 'fastimage', '~> 2.1.0'
  s.add_dependency 'faraday', '~> 0.17.0'
  s.add_dependency 'rack-timeout', '~> 0.5.0'
  s.add_dependency 'net-sftp', '~> 2.1.2'
  s.add_dependency 'autoprefixer-rails', '~> 9.7.0'
  s.add_dependency 'sassc-rails', '~> 2.1.0'
  s.add_dependency 'ruby-stemmer', '~> 2.0.0'
  s.add_dependency 'sprockets-rails', '~> 3.2.0'
  s.add_dependency 'sprockets', '~> 3.7.2'
  s.add_dependency 'predictor', '~> 2.3.0'
  s.add_dependency 'js-routes', '~> 1.4.0'
  s.add_dependency 'mongoid-active_merchant', '~> 0.2.0'
  s.add_dependency 'normalize-rails', '~> 4.1.1'
  s.add_dependency 'i18n-js', '~> 3.5.0'
  s.add_dependency 'local_time', '~> 2.1.0'
  s.add_dependency 'rack-attack', '~> 6.3.1'
  s.add_dependency 'redcarpet', '~> 3.5.0'
  s.add_dependency 'inline_svg', '~> 1.6.0'
  s.add_dependency 'haml', '~> 5.1.0'
  s.add_dependency 'ejs', '~> 1.1.1'
  s.add_dependency 'jbuilder', '~> 2.9.0'
  s.add_dependency 'turbolinks', '~> 5.2.0'
  s.add_dependency 'minitest', '~> 5.13.0'
  s.add_dependency 'countries', '~> 3.0.0'
  s.add_dependency 'rails-decorators', '~> 0.2.0.pre'
  s.add_dependency 'icalendar', '~> 2.6.0'
  s.add_dependency 'premailer-rails', '~> 1.10.1'
  s.add_dependency 'json-streamer', '~> 2.1.0'
  s.add_dependency 'dragonfly-s3_data_store', '~> 1.3.0'
  s.add_dependency 'loofah', '~> 2.4.0'
  s.add_dependency 'referer-parser', '~> 0.3.0'
  s.add_dependency 'chartkick', '~> 3.3.0'
  s.add_dependency 'browser', '~> 2.7.0'
  s.add_dependency 'puma', '>= 4.3.1'
  s.add_dependency 'rack', '>= 2.0.8'
  s.add_dependency 'webpacker'

  # HACK for vendoring active_shipping
  s.add_dependency 'active_utils', '~> 3.3.1'
  s.add_dependency 'measured', '>= 2.0'
end
