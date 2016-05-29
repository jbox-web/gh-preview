# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'gh_preview/version'

Gem::Specification.new do |s|
  s.name        = 'gh-preview'
  s.version     = GhPreview::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Nicolas Rodriguez']
  s.email       = ['nrodriguez@jbox-web.com']
  s.homepage    = 'http://jbox-web.github.io/gh-preview/'
  s.summary     = %q{A small gem to preview GitHub README files}
  s.description = %q{This gem provides a small Sinatra application to preview GitHub README files}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'rake'
  s.add_runtime_dependency 'rack'
  s.add_runtime_dependency 'thor'
  s.add_runtime_dependency 'haml'
  s.add_runtime_dependency 'json'
  s.add_runtime_dependency 'mime-types'

  s.add_runtime_dependency 'sinatra'
  s.add_runtime_dependency 'sinatra-contrib'
  s.add_runtime_dependency 'sinatra-flash'

  s.add_runtime_dependency 'html-pipeline'
  s.add_runtime_dependency 'redcarpet'
  s.add_runtime_dependency 'pygments.rb'
  s.add_runtime_dependency 'task_list'
  s.add_runtime_dependency 'rinku'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'zeus'
  s.add_development_dependency 'rack-test'
end
