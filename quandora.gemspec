lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "quandora/version"

Gem::Specification.new do |spec|
  spec.name          = "quandora"
  spec.version       = Quandora::VERSION
  spec.authors       = ["buzzjective"]
  spec.email         = ["hamid@buzzjective.com"]

  spec.summary       = %q{A simple gem to connect to the quandora}
  spec.description   = %q{A simple gem to connect to the quandora}
  spec.homepage      = "https://buzzjective.com/"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://buzzjective.com/"

  spec.metadata["homepage_uri"] = "https://buzzjective.com/"
  spec.metadata["source_code_uri"] = "https://github.com/buzzjective/quandora/"
  spec.metadata["changelog_uri"] = "https://github.com/buzzjective/quandora/"

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
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.0"
  spec.add_development_dependency "byebug", "~> 3.0"
  spec.add_dependency "faraday"
end
