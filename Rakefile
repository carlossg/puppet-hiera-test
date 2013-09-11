require 'bundler'
Bundler.require(:rake)
require 'rake/clean'

CLEAN.include('spec/fixtures/manifests', 'spec/fixtures/modules', 'doc', 'pkg')

require 'puppetlabs_spec_helper/rake_tasks'

task :default => [:clean, :spec]
