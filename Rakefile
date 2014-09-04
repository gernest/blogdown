require "bundler/gem_tasks"


require 'rspec/core/rake_task'

desc "Run RSpec"
RSpec::Core::RakeTask.new('spec')


desc "Run tests, both RSpec and Cucumber"
task :test => :spec

task :default => :test