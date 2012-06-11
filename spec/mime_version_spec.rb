require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "MimeVersion" do
  it "Parse simple version" do

    MimeVersion.parse_version("Content-type:text/html;version=1.4") == "1.4"

  end
end
