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

  s.add_runtime_dependency 'rake',       '~> 10.4', '>= 10.4.2'
  s.add_runtime_dependency 'rack',       '~> 1.6',  '>= 1.6.4'
  s.add_runtime_dependency 'thor',       '~> 0.19', '>= 0.19.1'
  s.add_runtime_dependency 'haml',       '~> 4.0',  '>= 4.0.7'
  s.add_runtime_dependency 'json',       '~> 1.8',  '>= 1.8.3'
  s.add_runtime_dependency 'mime-types', '~> 2.6',  '>= 2.6.2'

  s.add_runtime_dependency 'sinatra',         '~> 1.4', '>= 1.4.6'
  s.add_runtime_dependency 'sinatra-contrib', '~> 1.4', '>= 1.4.6'
  s.add_runtime_dependency 'sinatra-flash',   '~> 0.3', '>= 0.3.0'

  s.add_runtime_dependency 'html-pipeline',   '~> 2.0', '>= 2.0.0'
  s.add_runtime_dependency 'redcarpet',       '~> 3.3', '>= 3.3.2'
  s.add_runtime_dependency 'pygments.rb',     '~> 0.6', '>= 0.6.3'
  s.add_runtime_dependency 'task_list',       '~> 1.0', '>= 1.0.2'
  s.add_runtime_dependency 'rinku',           '~> 1.7', '>= 1.7.3'

  s.add_development_dependency 'rspec',     '~> 3.3',  '>= 3.3.0'
  s.add_development_dependency 'capybara',  '~> 2.5',  '>= 2.5.0'
  s.add_development_dependency 'simplecov', '~> 0.10', '>= 0.10.0'
  s.add_development_dependency 'zeus',      '~> 0.15', '>= 0.15.4'
  s.add_development_dependency 'rack-test', '~> 0.6',  '>= 0.6.3'
end
