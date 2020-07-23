# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.19.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.19.0/aws-oidc_0.19.0_darwin_amd64.tar.gz"
    sha256 "c43ab6e193d621b8bb26a7119ce542e63a0f23ce1794bc502e122e4042c03694"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.19.0/aws-oidc_0.19.0_linux_amd64.tar.gz"
      sha256 "b0a929336aa9ca289b38cd7eb7e2265747b84975873902396ecc05173cb969d9"
    end
  end

  def install
    bin.install "aws-oidc"
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
