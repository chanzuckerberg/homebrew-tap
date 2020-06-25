# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.14.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.14.0/aws-oidc_0.14.0_darwin_amd64.tar.gz"
    sha256 "4ebb953b7440f6555a696474deedf1d51b3573ba01fd5f9bcfe03c1ab7298090"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.14.0/aws-oidc_0.14.0_linux_amd64.tar.gz"
      sha256 "a47d23bb541b4c0c3495df5e025f8e3e788a7cf05f7f6115d3cd9fe92fe97ecb"
    end
  end

  def install
    bin.install "aws-oidc"
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
