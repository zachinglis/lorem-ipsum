# encoding: utf-8

require 'rubygems'

require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "lorem-ipsum"
  gem.homepage = "http://github.com/zachinglis/lorem-ipsum"
  gem.license = "MIT"
  gem.summary = %Q{The official gem of the Lorem-Ipsum API}
  gem.description = %Q{The official gem of the Lorem-Ipsum API}
  gem.email = "zach@londonmade.co.uk"
  gem.authors = ["Zach Inglis"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'yard'
YARD::Rake::YardocTask.new
