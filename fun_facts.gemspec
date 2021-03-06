lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fun_facts/version"

Gem::Specification.new do |spec|
  spec.name          = "fun_facts"
  spec.version       = FunFacts::VERSION
  spec.authors       = ["Anthony Oglesby"]
  spec.email         = ["anthonyoglesby88@gmail.com"]

  spec.summary       = "Will display daily fun facts from a website and link them to their sources!"
  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "launchy"
  spec.add_dependency "pry"
  
end
