
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "apollo/version"

Gem::Specification.new do |spec|
  spec.name          = "apollo-rb"
  spec.version       = Apollo::VERSION
  spec.authors       = ["Jason Hou"]
  spec.email         = ["hjj1992@gmail.com"]

  spec.summary       = %q{ruby client for ctrip apollo}
  spec.description   = %q{Ruby client of ctrip Apollo(configuration management center)}
  spec.homepage      = "https://github.com/falm/apollo-rb"


  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "http"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
