# frozen_string_literal: true

require_relative "lib/hipcall/version"

Gem::Specification.new do |spec|
  spec.name = "hipcall-sdk"
  spec.version = Hipcall::VERSION
  spec.authors = ["Hipcall Development Team", "Onur Ozgur OZKAN"]
  spec.email = ["hello@hipcall.com"]

  spec.summary = "Hipcall's Ruby SDK"
  spec.homepage = "https://www.hipcall.com"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hipcall/ruby-sdk"
  spec.metadata["changelog_uri"] = "https://github.com/hipcall/ruby-sdk/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "faraday", "~> 1.10"
  spec.add_dependency "faraday_middleware", "~> 1.2"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
