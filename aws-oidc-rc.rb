# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.32-c1aba0b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.32-c1aba0b/aws-oidc_0.25.32-c1aba0b_darwin_arm64.tar.gz"
      sha256 "1516e20e6e517e00f6f837cccc67b8d22a8ca963a8e39f3f841eb409e41a4318"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.32-c1aba0b/aws-oidc_0.25.32-c1aba0b_darwin_amd64.tar.gz"
      sha256 "4864b68591f2d2dd67dd2f2c8c1a9aab029f402a09ed03eb230dfd7990fde592"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.32-c1aba0b/aws-oidc_0.25.32-c1aba0b_linux_amd64.tar.gz"
      sha256 "9716ac47ff976c250d8183d9b235290aec4a6edf1be7b527b11444d7e7b58dd7"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.32-c1aba0b/aws-oidc_0.25.32-c1aba0b_linux_arm64.tar.gz"
      sha256 "42298d19361bcdb42122947dd7e1ac5eb8dd2451c8905dc0ac23ddab39f05c40"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
