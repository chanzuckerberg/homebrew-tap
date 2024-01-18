# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.32/aws-oidc_0.28.32_darwin_arm64.tar.gz"
      sha256 "c4e57d8a6c341453a3fa71646525bd0a38a16035dc27f9c05cd22442d97bf6ac"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.32/aws-oidc_0.28.32_darwin_amd64.tar.gz"
      sha256 "c2ec04a7a633df7a882c46665cbb902d03eae28aced458ee0a7ea36103ab65fb"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.32/aws-oidc_0.28.32_linux_arm64.tar.gz"
      sha256 "4ee603597df107dcc92f0f4a94cf06ce330df94af3d177e6834c5aaf07254e95"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.32/aws-oidc_0.28.32_linux_amd64.tar.gz"
      sha256 "e7cf86dfb033e4280769387d8473217e7f2ef4301735aae1e94a24d13adf1469"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
