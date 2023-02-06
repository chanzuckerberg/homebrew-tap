# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.30"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.30/aws-oidc_0.25.30_darwin_arm64.tar.gz"
      sha256 "ac8851f9a1b185df9ad0793d7f459bd7cd84199d36dbe3e391b45627b9c9ed19"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.30/aws-oidc_0.25.30_darwin_amd64.tar.gz"
      sha256 "9a0f9074094c2aff427350efb3508d4e089f3125d978753305e825a39f5f61a5"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.30/aws-oidc_0.25.30_linux_amd64.tar.gz"
      sha256 "48db0b5a0d8f297b518c654e983927cf2368a7a60f09aa946320e226ba040105"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.30/aws-oidc_0.25.30_linux_arm64.tar.gz"
      sha256 "5a44827448ac60fdc24f97ef9d9d34fbe8de4f73278898ea523916dd30af767a"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
