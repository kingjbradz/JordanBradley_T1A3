Gem::Specification.new do |s|
    s.name      = 'jordanbradleyt1a3'
    s.version   = '0.0.0'
    s.platform  = Gem::Platform::RUBY
    s.summary   = 'Home Task app for assignment gem'
    s.description = "Just reads and adds to files. Not much"
    s.authors   = ['Jordan Bradley']
    s.email     = ['cab022005@coderacademy.edu.au']
    s.homepage  = 'http://rubygems.org/gems/pagekey'
    s.license   = 'MIT'
    s.files     = Dir.glob("{lib,bin}/**/*") # This includes all files under the lib directory recursively, so we don't have to add each one individually.
    s.require_path = 'lib'
  end