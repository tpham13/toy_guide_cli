require_relative 'lib/toy_guide/version'

Gem::Specification.new do |spec|
  spec.name          = "toy_guide"
  spec.version       = ToyGuide::VERSION
  spec.authors       = ["tpham13"]
  spec.email         = ["tpham0123@gmail.com"]

  spec.summary       = "A gem that guide parents to a list of toys for each age range"
  spec.description   = "A gem that guide parents to a list of toys for each age range"
  spec.homepage      = "https://github.com/tpham13/toy_guide_cli/tree/master"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/tpham13/toy_guide_cli/tree/master"
  spec.metadata["changelog_uri"] = "https://github.com/tpham13/toy_guide_cli/tree/master"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
