## GitHubPreview

[![GitHub license](https://img.shields.io/github/license/jbox-web/gh-preview.svg)](https://github.com/jbox-web/gh-preview/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/jbox-web/gh-preview.svg)](https://github.com/jbox-web/gh-preview/releases/latest)
[![Gem](https://img.shields.io/gem/v/gh-preview.svg)](https://rubygems.org/gems/gh-preview/versions/1.0.0)
[![Gem](https://img.shields.io/gem/dtv/gh-preview.svg)](https://rubygems.org/gems/gh-preview/versions/1.0.0)
[![Build Status](https://travis-ci.org/jbox-web/gh-preview.svg?branch=master)](https://travis-ci.org/jbox-web/gh-preview)
[![Code Climate](https://codeclimate.com/github/jbox-web/gh-preview/badges/gpa.svg)](https://codeclimate.com/github/jbox-web/gh-preview)
[![Test Coverage](https://codeclimate.com/github/jbox-web/gh-preview/badges/coverage.svg)](https://codeclimate.com/github/jbox-web/gh-preview/coverage)
[![Dependency Status](https://gemnasium.com/jbox-web/gh-preview.svg)](https://gemnasium.com/jbox-web/gh-preview)

### A small Sinatra application to preview GitHub README files, easy ;)

This gem provides a small Sinatra application to preview GitHub README files or any markdown file.

**Notes** : The app can only serve one file at a time. If you need a more sophisticated rendering system, look at [Jekyll](https://github.com/jekyll/jekyll) ;)

## Installation

```ruby
gem install gh-preview
```

No need to add it to your Gemfile, it will be globally available.

## Usage

From any directory containing a ```README.md``` file :

```sh
nicolas@desktop:~/my/wonderful/application$ gh-preview server
```

Then open your browser at this url : [http://localhost:4000](http://localhost:4000).

## Options

```sh
Usage:
  gh-preview server [options]

Options:
  -f, [--file=FILE]  # File to serve   (default: README.md)
  -p, [--port=PORT]  # Port for server (default 4000)
```

## Contributors

A big thank to [them](https://github.com/jbox-web/gh-preview/blob/master/AUTHORS) for their contribution!

## Contribute

You can contribute to this plugin in many ways such as :

* Helping with documentation
* Contributing code (features or bugfixes)
* Reporting a bug
* Submitting translations
