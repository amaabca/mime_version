=Overview=
Parse a version form the content type string and then use it in the environment variable.

Mime-version is a simple rack middleware gem to parse a version string out of the content-type in the http request. 

The aim is to build a better way of version API calls.

For example: "Content-type:text/html;vnd.example-com.foo+json; version=1.1" will be parsed into 1.1. 


=Setup=

Rails 3: 
- in application.rb add: 


module RakeMiddleMime
  class Application < Rails::Application
	config.middleware.use MimeVersion	
  end
end

- in  a controller or view or model:
  you can use "ENV['version']" to determine what version of API