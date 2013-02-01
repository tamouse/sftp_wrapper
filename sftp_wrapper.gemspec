# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sftp_wrapper/version'

Gem::Specification.new do |gem|
  gem.name          = "sftp_wrapper"
  gem.version       = SftpWrapper::VERSION
  gem.authors       = ["Tamara Temple"]
  gem.email         = ["tamouse@gmail.com"]
  gem.description   = SftpWrapper::DESCRIPTION
  gem.summary       = SftpWrapper::SUMMARY
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec-core'
  gem.add_development_dependency 'webmock'
  gem.add_dependency 'net-sftp'
  gem.add_dependency 'log4r'

end
