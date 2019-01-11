$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "job_chains/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "job_chains"
  s.version     = JobChains::VERSION
  s.authors     = ["ThinkNear"]
  s.email       = ["software@thinknear.com"]
  s.homepage    = "https://github.com/thinknear"
  s.summary     = "Chain jobs with preconditions and postconditions"
  s.description = "Extend Resque and Sidekiq worker functionality by allowing before/after blocks that define preconditions for running the worker, as well as postconditions for after the worker finishes."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails'
  s.add_dependency 'honeybadger'
  s.add_dependency 'resque'
  s.add_dependency 'sidekiq'
  s.add_dependency 'sinatra'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rspec-sidekiq'
end
