# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.name = 'mongrel_proctitle'
  s.version = '1.4'
  s.date = '2009-03-01'

  s.platform = Gem::Platform::RUBY
  s.summary = "The mongrel_proctitle GemPlugin"
  s.description = s.summary

  s.authors = ["Alexander Staubo", "Ryan Tomayko", "Arya Asemanfar"]
  s.email = "r@tomayko.com"
  s.homepage = "http://github.com/rtomayko/mongrel_proctitle"

  s.add_dependency 'mongrel',    '>= 1.1'
  s.add_dependency 'gem_plugin', '>= 0.2.3'

  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]

  s.files = %w[
    LICENSE
    README
    Rakefile
    mongrel_proctitle.gemspec
    lib/mongrel_proctitle.rb
    lib/mongrel_proctitle/init.rb
    bin/mongrel_top
  ]

  s.bindir = 'bin'
  s.executables = %w[mongrel_top]
  s.require_path = 'lib'

  s.rubyforge_project = "wink"
  s.rubygems_version = '1.1.1'
end
