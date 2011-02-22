# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "lyb_devise_admin"
  s.summary = "Insert LybDeviseAdmin summary."
  s.authors = ["Simon Hürlimann (CyT)"]
  s.email = ["simon.huerlimann@cyt.ch"]
  s.description = "LybDeviseAdmin ."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.1.0"
end