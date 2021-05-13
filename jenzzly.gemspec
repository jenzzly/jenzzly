require_relative 'lib/jenzzly/version'

Gem::Specification.new do |spec|
  spec.name          = "jenzzly"
  spec.version       = Jenzzly::VERSION
  spec.authors       = ["Janvier Byiringiro"]
  spec.email         = ["byjanvier@gmail.com"]

  spec.summary       = "Search answers on stackoverflow"
  spec.description   = "Search answers on stackoverflow"
  spec.homepage      = 'https://rubygems.org/gems/jenzzly'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/jenzzly/jenzzly'
  spec.metadata["changelog_uri"] = 'https://github.com/jenzzly/jenzzly'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.1.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "colorize"
  spec.add_development_dependency "nokogiri"

  spec.add_runtime_dependency "colorize"
  spec.add_runtime_dependency "nokogiri"
end
