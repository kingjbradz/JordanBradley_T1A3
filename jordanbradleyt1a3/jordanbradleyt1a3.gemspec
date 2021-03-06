require_relative 'lib/jordanbradleyt1a3/version'

Bundler.require(:default, :development)

Gem::Specification.new do |spec|
  spec.name          = "jordanbradleyt1a3"
  spec.version       = Jordanbradleyt1a3::VERSION
  spec.authors       = ["TODO: Jordan Bradley"]
  spec.email         = ["TODO: jordanrhysbradley@gmail.com"]

  spec.summary       = %q{This is a mock home task/chore tracking app made for an assessment.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.add_development_dependency "rspec", "~> 3.4.4"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'rspec', '~> 3.4.0'
  spec.add_dependency 'tty-prompt', '~> 0.21.0'
  spec.add_dependency 'tty-table', '~> 0.11.0'
  spec.add_dependency 'tty-font', '~> 0.4.0'
  spec.add_dependency 'smarter_csv', '~> 1.1.4'
  spec.add_dependency 'colorize', '~> 0.8.1'
end

