class MimeVersion
  def initialize(app)
    @default_version = app
    #@default_version = default_version
  end

  def self.parse_version(content_type)
    tag = "version="
    @version = @default_version
    mime_types = content_type.split(";")
    @hash = Hash[content_type.split(';').map { |i| i.split('=') }]
    @version = @hash["version"]
  end

  def call(env)

    ENV['version'] = ""
    if env.has_key? "CONTENT_TYPE"
      @version = MimeVersion.parse_version(env["CONTENT_TYPE"])
      ENV['version'] = @version
    end
  @default_version.call(env)
  end
end