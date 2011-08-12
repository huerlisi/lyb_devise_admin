# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'lyb_devise_admin/version'

Gem::Specification.new do |s|
  s.name        = "lyb_devise_admin"
  s.version     = LybDeviseAdmin::VERSION
  s.authors     = ["Simon Hürlimann (CyT)"]
  s.email       = ["simon.huerlimann@cyt.ch"]
  s.homepage    = "https://github.com/huerlisi/has_accounts"
  s.summary     = "Admin interface for device."
  s.description = "LybDeviseAdmin provides a ready-to-use admin interface for device."

  s.files        = `git ls-files app lib config`.split("\n")
  s.platform     = Gem::Platform::RUBY

  s.extra_rdoc_files = ["README.rdoc"]
end
