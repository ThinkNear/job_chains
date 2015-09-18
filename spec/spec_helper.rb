require 'bundler/setup'
Bundler.setup

require 'active_support'
require 'active_support/core_ext/object'
require 'job_chains'
require 'honeybadger'
require 'sidekiq'
require 'rspec-sidekiq'
require 'sidekiq/testing'

RSpec.configure do |config|
  RSpec::Sidekiq.configure { |config| config.warn_when_jobs_not_processed_by_sidekiq = false }
  Sidekiq::Testing.fake!
end
