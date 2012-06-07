Gem::Specification.new do |s|
  s.name        = 'mimeversion'
  s.version     = '0.0.1'
  s.date        = '2012-06-07'
  s.summary     = "Mime version"
  s.description = "Parse a version form the content type string and then use it in the environment variable.
                   For example: \"Content-type:text/html;vnd.example-com.foo+json; version=1.1\" will be parsed into 1.1"
  s.authors     = ["Chris Brulak"]
  s.email       = 'chris.brulak@ama.ab.ca'
  s.files       = ["lib/mime_version.rb"]
  s.homepage    =
    'http://rubygems.org/gems/mimeversion'
end