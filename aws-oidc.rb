# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.23.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.23.1/aws-oidc_0.23.1_darwin_amd64.tar.gz"
    sha256 "d760365f5fa2504794d1494e1cbcee227e165a5a12b11e58f8085d1c716c8845"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.23.1/aws-oidc_0.23.1_linux_amd64.tar.gz"
      sha256 "09507e08c7933e3e641043e81a68a9ced2a11d46b0a520dffb85467ab1c7a411"
    end
  end

  def install
    bin.install "aws-oidc"
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
