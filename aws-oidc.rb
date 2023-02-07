# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.31/aws-oidc_0.25.31_darwin_arm64.tar.gz"
      sha256 "40a37d927960811bfe11289a3b800414148a194d108acb2a1856f580f259b49d"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.31/aws-oidc_0.25.31_darwin_amd64.tar.gz"
      sha256 "d30388251339b14b79b098456ffe946ec56da2cfdb056b1cb42a5b3ad6530334"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.31/aws-oidc_0.25.31_linux_amd64.tar.gz"
      sha256 "5f1df3079d9d9ba3d9a8767bb727f2447bfc98c22239ad6b336cba64f534615e"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.31/aws-oidc_0.25.31_linux_arm64.tar.gz"
      sha256 "4d02208ce4fcc0f6cd07c9d13ecde0e169e0977011d47468ba40c285497d8d34"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
