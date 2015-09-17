require 'rubygems'
require 'simplecov'
require 'rack/test'
require 'rspec'
require 'capybara/rspec'
require 'codeclimate-test-reporter'
require 'support/helper'

## Configure SimpleCov
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  CodeClimate::TestReporter::Formatter
]

## Start Simplecov
SimpleCov.start do
  add_filter '/spec/'
end

## Configure RSpec
RSpec.configure do |config|
  include Helper

  config.color = true
  config.fail_fast = false
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

ENV['RACK_ENV'] = 'test'
require 'gh_preview'
