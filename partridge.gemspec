# frozen_string_literal: true

require_relative 'lib/partridge/version'

Gem::Specification.new do |spec|
  spec.name          = 'partridge'
  spec.version       = Partridge::VERSION
  spec.authors       = ['Max Kadel', 'Lakeisha Robinson']
  spec.email         = ['max@curationexperts.com', 'lakeisha.robinson@yale.edu']

  spec.summary       = 'Create pairtree structure'
  spec.description   = 'Create a pairtree structure for a given OID for Yale Digital Collections projects.'
  spec.homepage      = 'https://github.com/yalelibrary/yul-dc-partridge'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org/'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/yalelibrary/yul-dc-partridge'
  spec.metadata['changelog_uri'] = 'https://github.com/yalelibrary/yul-dc-partridge/blob/master/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_development_dependency 'bixby'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
