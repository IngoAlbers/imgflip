
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imgflip/version'

Gem::Specification.new do |spec|
  spec.name          = 'imgflip'
  spec.version       = Imgflip::VERSION
  spec.authors       = ['Ingo Albers']
  spec.email         = ['ingo.albers@live.de']

  spec.summary       = 'Access the imgflip Meme Generator API.'
  spec.description   = 'Generate your own memes.'
  spec.homepage      = 'https://github.com/IngoAlbers/imgflip'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
