Parse a version form the content type string and then use it in the environment variable.

Mime-version is a simple rack middleware gem to parse a version string out of the content-type in the http request. 

The aim is to build a better way of version API calls.

For example: "Content-type:text/html;vnd.example-com.foo+json; version=1.1" will be parsed into 1.1. 

Then in a controller or a view, you can use "ENV['version']" to determine what version of API