## GithubPreview

### A small Sinatra application to preview GitHub README files, easy ;)

This gem provides a small Sinatra application to preview GitHub README files or any markdown file.

## Installation

```ruby
gem install gh-preview
```

No need to add it to your Gemfile, it will be globally available.

## Usage

From any directory containing a ```README.md``` file :

```sh
nicolas@desktop:~/PROJECTS/GITHUB/gh-preview$ gh-preview server
```

## Options

```sh
Usage:
  gh-preview server [options]

Options:
  -f, [--file=FILE]  # File to serve   (default: README.md)
  -p, [--port=PORT]  # Port for server (default 4000)
```

## Contribute

You can contribute to this plugin in many ways such as :

* Helping with documentation
* Contributing code (features or bugfixes)
* Reporting a bug
* Submitting translations

this is ~~good~~ bad

 Column1 | Column2
---------|--------
Line1    | Hello
Line2    | World

This is _underlined_ but this is still *italic*

This is ==highlighted==

1. item1
2. item2
3. item3
