# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.43/aws-oidc_0.28.43_darwin_arm64.tar.gz"
      sha256 "ec989dacaa9db62b6d8bbaf9bcdf574077d971d942d2e66b4749bba73d5f97d6"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.43/aws-oidc_0.28.43_darwin_amd64.tar.gz"
      sha256 "8b8f9c2e63b5748fe5874069d530de17a9ef0987436c393f9e605e5fcd69982c"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.43/aws-oidc_0.28.43_linux_arm64.tar.gz"
      sha256 "fdf90ac3c8d15a4319a1fe8c85d5a686924127fcf224d506d2e1d4d8a2e5dcfa"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.43/aws-oidc_0.28.43_linux_amd64.tar.gz"
      sha256 "313c6c6eac8eae8d210b7d89f7781495dc859d21dff1b8e015e06f84f8ffbab8"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
