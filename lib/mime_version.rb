class MimeVersion
  def initialize(app)
    @app = app
  end

  def self.parse_version(content_type)
    tag = "version="
    @version = @default_version
    @hash = Hash[content_type.split(';').map { |i| i.split('=') }]
    @version = @hash["version"]
  end

  def call(env)

    ENV['version'] = ""
    if env.has_key? "CONTENT_TYPE"
      @version = MimeVersion.parse_version(env["CONTENT_TYPE"])
      ENV['version'] = @version
    end
  @app.call(env)
  end
end