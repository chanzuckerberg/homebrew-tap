
# To test changes to this run:
#  $ brew install --build-from-source ./aws_okta_credential_process.rb
class AwsOktaCredentialProcess < Formula
    desc "A script for making aws-okta work with the aws credential_process"

    homepage "https://github.com/chanzuckerberg/infra-tools"

    url "https://github.com/chanzuckerberg/infra-tools/archive/master.zip", :using => :curl
    version "0.0.1"
    sha256 "77fc1cfc8bad24de9959337a20238b8dc430e79c306a079548d2dbf7e2d042f8"

    bottle :unneeded

    depends_on "jq"

    def install
      bin.install "aws_okta_credential_process"
    end
  end