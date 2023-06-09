# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.75-1e4ac15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.75-1e4ac15/aws-oidc_0.25.75-1e4ac15_darwin_amd64.tar.gz"
      sha256 "c5c10429002a06a3aa7dec8d22adc62030fb5033f2f82b440b3f3a3e18e34e2e"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.75-1e4ac15/aws-oidc_0.25.75-1e4ac15_darwin_arm64.tar.gz"
      sha256 "d927c9e73ced2b9af86b3b9dcef18344edc92aff79596c107c7480914cd5a719"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.75-1e4ac15/aws-oidc_0.25.75-1e4ac15_linux_amd64.tar.gz"
      sha256 "6724971b6ee1eafb28847be979724f4395073926679e12207a7d15e7b15e762f"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.75-1e4ac15/aws-oidc_0.25.75-1e4ac15_linux_arm64.tar.gz"
      sha256 "8d47fac0266c589bda1b872791dd16a544114997925161d5b7fcd2edb121ae11"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
