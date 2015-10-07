Gem::Specification.new do |s|
  s.name        = 'rake_args'
  s.version     = '0.1.0'
  s.date        = '2015-10-06'
  s.summary     = "RakeArguments"
  s.description = "A simple Rake extension to pass arguments into a Rake task."
  s.authors     = ["Ryan Breen"]
  s.email       = 'ryanbreen85@gmail.com'
  s.files       = ["lib/rake_args.rb", "README.md"]
  s.homepage    =
    'https://github.com/rufusroflpunch/rake_args'
  s.license       = 'MIT'

  s.add_development_dependency "bundler", "~> 1.7"
  s.add_development_dependency "rake", "~> 10.0"
end
