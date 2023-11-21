# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.16-221ebc7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.16-221ebc7/aws-oidc_0.28.16-221ebc7_darwin_arm64.tar.gz"
      sha256 "d13d3dd144b2a3ff03b07ccc1f39b90872e3588ba2726a13b3698a354a573f34"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.16-221ebc7/aws-oidc_0.28.16-221ebc7_darwin_amd64.tar.gz"
      sha256 "397fa9711d2006aa7fff9407e2afb26ea18654de8e1054fa2db6ca61b44df7c4"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.16-221ebc7/aws-oidc_0.28.16-221ebc7_linux_amd64.tar.gz"
      sha256 "5b58cc7db90e7f4269d9ec98ab8c44b382f78b0be49fd70450167f4966b201fd"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.16-221ebc7/aws-oidc_0.28.16-221ebc7_linux_arm64.tar.gz"
      sha256 "61854ceea6edb8659c4a96257bd39ba6e620423c3a1ffaf0e1941701d64ec090"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
