# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.1-0b605d0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.1-0b605d0/aws-oidc_0.25.1-0b605d0_darwin_amd64.tar.gz"
      sha256 "14d765b2e4be4823459427e91cc03ea942ac400680e0568ea6de5380013f648f"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.1-0b605d0/aws-oidc_0.25.1-0b605d0_darwin_arm64.tar.gz"
      sha256 "ef0f20deaa7003012c07c9dcc1a3997e7aef843b4c0d78a3b386991634028041"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.1-0b605d0/aws-oidc_0.25.1-0b605d0_linux_amd64.tar.gz"
      sha256 "a7add5ee7267a712b42173109fb41a7ef8408a83d6344e6f3bf69b3417124d89"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.1-0b605d0/aws-oidc_0.25.1-0b605d0_linux_arm64.tar.gz"
      sha256 "eada9f379fe181e51eff6c2b5fb5e6dfa9e284bd16844df4cbaf1ce551df5359"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
