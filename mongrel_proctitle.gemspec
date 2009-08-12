Gem::Specification.new do |s|
  s.name = "mongrel_proctitle"
  s.version = "1.4.1.2"
  s.platform = Gem::Platform::RUBY
  s.summary = "The mongrel_proctitle Gem"
  s.description = s.summary
  s.authors = ["Jon Swope","Arya Asemanfar"]
  s.email = "jaswope@gmail.com"
  s.homepage = "http://github.com/jaswope/mongrel_proctitle"
  s.add_dependency('mongrel', '>= 1.1')
  s.add_dependency('gem_plugin', '>= 0.2.3')
  s.has_rdoc = true
  s.extra_rdoc_files = [ "README" ]
  s.bindir = "bin"
  s.executables = [ "mongrel_top" ]
  s.files = %w(LICENSE README Rakefile bin/mongrel_top lib/mongrel_proctitle.rb lib/mongrel_proctitle/init.rb)
  s.require_path = "lib"
end