class MimeVersion
  def initialize(app, message = "Mime Version")
    @app = app
    @message = message
  end

  def call(env)
    content_type = env["CONTENT_TYPE"]
    ENV['version'] = ""
    if(contentType)
      tag = "version="

      index = env["CONTENT_TYPE"].index(tag)

      if(index)
        @version = env["CONTENT_TYPE"][index + tag.length,3]
        ENV['version'] = @version

      end
    end
  @status, @headers, @response = @app.call(env)
  [@status, @headers, @response]
  end
end