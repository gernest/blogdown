require "bundler/gem_tasks"

require 'cucumber/rake/task'

desc "Run cucumber"
Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = ""
  t.cucumber_opts << "--format pretty"
end

require 'rspec/core/rake_task'

desc "Run RSpec"
RSpec::Core::RakeTask.new('spec')


desc "Run tests, both RSpec and Cucumber"
task :test => [:spec, :cucumber]

task :default => :test