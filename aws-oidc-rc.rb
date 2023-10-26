# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.10-afbe61f"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.10-afbe61f/aws-oidc_0.28.10-afbe61f_darwin_arm64.tar.gz"
      sha256 "6c13047f7c9bdfa0a359ea35b850718ca965f325e2eb666766e96f37d92956c4"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.10-afbe61f/aws-oidc_0.28.10-afbe61f_darwin_amd64.tar.gz"
      sha256 "28414a55dac591b77a83ee25a3f6bc06452243828aadc13aaa1499a5fda74c31"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.10-afbe61f/aws-oidc_0.28.10-afbe61f_linux_arm64.tar.gz"
      sha256 "2c4168f06eac0be7ac9ad31c57397184cdb67130a94255194676fabc9a581124"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.10-afbe61f/aws-oidc_0.28.10-afbe61f_linux_amd64.tar.gz"
      sha256 "cf9fc3b74d950c08b1d41d28e1a071935e9ec7b9f52ef950015901f97f744666"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
