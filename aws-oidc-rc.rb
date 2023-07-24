# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.86-c9a8f92"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.86-c9a8f92/aws-oidc_0.25.86-c9a8f92_darwin_amd64.tar.gz"
      sha256 "640e639c443e967edbb8afe91dfdff508a027d6f82945a03c4091123b5c94823"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.86-c9a8f92/aws-oidc_0.25.86-c9a8f92_darwin_arm64.tar.gz"
      sha256 "9896fd1d0b1343d4c43d15d3dd2dcd8ae77f3a8ff3f635d351968b9734055a63"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.86-c9a8f92/aws-oidc_0.25.86-c9a8f92_linux_amd64.tar.gz"
      sha256 "25948bd8baf757fb9d0fc226bc4e89170b527a2b83bddf0a9bda305753f395da"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.86-c9a8f92/aws-oidc_0.25.86-c9a8f92_linux_arm64.tar.gz"
      sha256 "58cd2c83552a0969be17ac7f2c8766e2e26f13dd2459618a878115676c5e859f"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
