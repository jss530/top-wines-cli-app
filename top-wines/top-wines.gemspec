# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'top/version'


Gem::Specification.new do |spec|
  spec.name          = "top-wines"
  spec.version       = Top::VERSION
  spec.authors       = ["'Jacqlene Sifre'"]
  spec.email         = ["'jsifre01@gmail.com'"]

  spec.summary       = "A list of the top 50 wines of 2016 according to Vine Pair"
  spec.description   = "A gem that allows a user to access a top 50 wine list on vinepair.com, as well as each wine's tasting note."
  spec.homepage      = "https://github.com/jss530/top-wines-cli-app"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
