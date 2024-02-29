# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.54"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.54/aws-oidc_0.28.54_darwin_arm64.tar.gz"
      sha256 "42f2e13a41de2abe86ba95a9607ff4edbb5efb610c5b09421a4b85f8dd013f23"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.54/aws-oidc_0.28.54_darwin_amd64.tar.gz"
      sha256 "0150a5fee0f7325106886c67e9b6a17c9f551dac28cfec50ba6a6ef9e2bdf9d4"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.54/aws-oidc_0.28.54_linux_arm64.tar.gz"
      sha256 "ba68a9f97bcab57d5077149aa297ae189d76b704b9a84809c109cd72fff95d75"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.54/aws-oidc_0.28.54_linux_amd64.tar.gz"
      sha256 "cfa977f3949b4474ddca61bc5c17862edb6c9f623091ffe49c6b5869c9796035"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
