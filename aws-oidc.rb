# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.67"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.67/aws-oidc_0.28.67_darwin_amd64.tar.gz"
      sha256 "6b74961a8f508420ac707e51ada2fcc0fa8774ab3fa4622dd647fcb093874958"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.67/aws-oidc_0.28.67_darwin_arm64.tar.gz"
      sha256 "8fba6960ac6efefe5492c45dbc5eef9ba54b0590d354620c3dd88a270cfd40d6"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.67/aws-oidc_0.28.67_linux_amd64.tar.gz"
      sha256 "ba6a047379bc0939c4842180680f80d2166ca05ee8419216dcae36e2d4903b56"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.67/aws-oidc_0.28.67_linux_arm64.tar.gz"
      sha256 "e9e37ed0c0176a0ab7c40d13ab5908f55332dda04dd741db3c336e4eaeb1fe89"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
