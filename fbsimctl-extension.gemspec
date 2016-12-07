require_relative 'lib/fbsimctl-extension/version'

Gem::Specification.new do |gem|
  gem.name          = 'fbsimctl-extension'
  gem.version       = FbSimCtlExtension::VERSION
  gem.platform      = Gem::Platform::RUBY
  gem.authors       = ['Jani Jegoroff']
  gem.email         = ['jani.jegoroff@gmail.com']
  gem.summary       = 'fbsimctl extension.'
  gem.description   = 'fbsimctl extension provides convenient metaclass to execute FBSimulatorControl shell commands.'
  gem.homepage      = 'http://github.com/JaniJegoroff/fbsimctl-extension'
  gem.license       = 'MIT'

  gem.files         = Dir.glob('lib/**/*.rb')
  gem.require_paths = ['lib']

  gem.test_files    = Dir.glob('spec/**/*.rb')

  gem.add_development_dependency 'rake', '~> 12.0'
  gem.add_development_dependency 'minitest', '~> 5.10'
  gem.add_development_dependency 'minitest-reporters', '~> 1.1'
  gem.add_development_dependency 'rubocop', '~> 0.46'
end
