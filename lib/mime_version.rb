class MimeVersion
  def initialize(app)
    @default_version = app
    #@default_version = default_version
  end

  def call(env)
    content_type = env["CONTENT_TYPE"]
    ENV['version'] = ""
    if(content_type)
      tag = "version="

      @version = @default_version
      if env.has_key? "CONTENT_TYPE"
        mime_types = env["CONTENT_TYPE"].split(";")



        @version = Hash[env["CONTENT_TYPE"].split(';').map { |i| i.split(tag) }]
        ENV['version'] = @version.to_s
      end


    end
  @default_version.call(env)
  end
end