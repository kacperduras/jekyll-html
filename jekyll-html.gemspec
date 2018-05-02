# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll-html/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-html"
  spec.version       = Jekyll::HTML::VERSION
  spec.authors       = ["Kacper Duras"]
  spec.email         = ["git@kacperduras.pl"]

  spec.summary       = "A Jekyll plugin to use HTML tags in Jekyll pages, posts and collections."
  spec.homepage      = "https://github.com/kacperduras/jekyll-html"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.required_ruby_version = ">= 2.2"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r!^(test|spec|features)/!)
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r!^exe/!) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", "~> 3.8.1"

  spec.add_development_dependency "bundler", "~> 1.16.1"
  spec.add_development_dependency "minitest", "~> 5.11.3"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rubocop", "~> 0.52.0"
end
