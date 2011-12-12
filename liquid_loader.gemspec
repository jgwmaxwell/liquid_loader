# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "liquid_loader/version"

Gem::Specification.new do |s|
  s.name        = "liquid_loader"
  s.version     = LiquidLoader::VERSION
  s.authors     = ["John Maxwell"]
  s.email       = ["JGW Maxwell"]
  s.homepage    = ""
  s.summary     = %q{This gem provides a simple include method to auto-generate liquid drops from models.}
  s.description = %q{See Summary}

  s.rubyforge_project = "liquid_loader"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "liquid"
  s.add_runtime_dependency "rails", "~> 3.1.0"
end
