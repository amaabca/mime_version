Gem::Specification.new do |s|
  s.name        = 'mime_version'
  s.version     = '0.0.5'
  s.date        = '2012-06-07'
  s.summary     = "Mime version"
  s.description = "Parse a version from the content type string and then use it in the environment variable.
                   For example: 'Content-type:text/html;vnd.example-com.foo+json; version=1.1' will be parsed into 1.1"
  s.authors     = ["Chris Brulak"]
  s.email       = 'chris.brulak@ama.ab.ca'
  s.files       = ["lib/mime_version.rb"]
  s.homepage    = 'https://github.com/amaabca/mime_version'
end