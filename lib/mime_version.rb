class MimeVersion
  def initialize(app, message = "Mime Version")
    @app = app
    @message = message
  end

  def call(env)
    @status, @headers, @response = @app.call(env)

    String contentType = env["CONTENT_TYPE"]
    ENV['version'] = ""
    if(contentType)
      String tag = "version="

      index = env["CONTENT_TYPE"].index(tag)

      if(index)
        @version = env["CONTENT_TYPE"][index + tag.length,3]
        ENV['version'] = @version

      end
    end
  [@status, @headers, @response]
  end
end