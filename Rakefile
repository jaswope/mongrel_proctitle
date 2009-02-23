require 'rake'
require 'rake/testtask'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'
require 'rake/contrib/rubyforgepublisher'
require 'fileutils'
include FileUtils

CLEAN.include [ "pkg", "lib/*.bundle", "*.gem", ".config", "**/*.log" ]

desc "Build package"
task :default => [:package]

# Load gemspec like github to surface SAFE issues early
require 'rubygems/specification'
data = File.read('mongrel_proctitle.gemspec')
spec = nil
Thread.new { spec = eval("$SAFE = 3\n#{data}") }.join

Rake::GemPackageTask.new(spec) do |p|
  p.gem_spec = spec
  p.need_zip = true
  p.need_tar_gz = true
end

task :install => [:package] do
  sh %{gem install pkg/#{name}-#{version}.gem}
end

task :uninstall => [:clean] do
  sh %{gem uninstall #{name}}
end

desc 'Publish gem and tarball to rubyforge'
task :release => [:package] do
  pkg = "pkg/#{spec.name}-#{spec.version}"
  sh <<-end
    rubyforge add_release wink #{spec.name} #{spec.version} #{pkg}.gem &&
    rubyforge add_file    wink #{spec.name} #{spec.version} #{pkg}.tar.gz
  end
end
