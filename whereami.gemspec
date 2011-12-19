# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "whereami/version"

Gem::Specification.new do |s|
  s.name        = "whereami"
  s.version     = Whereami::VERSION
  s.authors     = ["Jakub Arnold"]
  s.email       = ["darthdeus@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A simple tool to queue up and execute commands based on network location.}
  s.description = %q{A simple tool to queue up and execute commands based on network location.}

  s.rubyforge_project = "whereami"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
