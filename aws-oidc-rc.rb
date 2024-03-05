# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.56-cf957f7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.56-cf957f7/aws-oidc_0.28.56-cf957f7_darwin_arm64.tar.gz"
      sha256 "6fbbb07a218241e976d48b5440ee4f54b2053b1ee5ad3f959c01ae4d789ced61"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.56-cf957f7/aws-oidc_0.28.56-cf957f7_darwin_amd64.tar.gz"
      sha256 "af99f8bcffe5a2899c07fddadc624986b8dc44c0c7931d87d56a281c24d32d43"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.56-cf957f7/aws-oidc_0.28.56-cf957f7_linux_arm64.tar.gz"
      sha256 "956edd7a20e4c91427912d85ad0879cd1f6ffb2130c04c830c2cc8bc10bbfe19"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.56-cf957f7/aws-oidc_0.28.56-cf957f7_linux_amd64.tar.gz"
      sha256 "af606b787056cdac568d5190f9440e7d35258a5bc6323ebcea56d26767a64cd0"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
