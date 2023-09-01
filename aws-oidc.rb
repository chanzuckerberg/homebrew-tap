# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.26.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.26.15/aws-oidc_0.26.15_darwin_arm64.tar.gz"
      sha256 "71cdfe1f6bf5746cb292019098c505e09ae8c4e02b6cb9c1a4f5f37a9c4f6113"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.26.15/aws-oidc_0.26.15_darwin_amd64.tar.gz"
      sha256 "77f6ef1b2c89926be09e1c89f8e7b225d252f2f4696b290600f3e3b2e4bd61fa"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.26.15/aws-oidc_0.26.15_linux_amd64.tar.gz"
      sha256 "a91e10f068c63c7a04fe1a86cd0a9ecc8ef9e339145cb7d658f4e33847d127ab"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.26.15/aws-oidc_0.26.15_linux_arm64.tar.gz"
      sha256 "aa6bfe4d504318d7b883cbf835eeb53dbe609fc942036362670e2c22dda91e25"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
