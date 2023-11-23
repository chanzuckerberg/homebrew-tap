# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.17-b67b92e"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.17-b67b92e/aws-oidc_0.28.17-b67b92e_darwin_arm64.tar.gz"
      sha256 "6de6c1c658ab06f8833dd4a9ede2dfb8ae351eb3598cbb182e7417e7b637a73f"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.17-b67b92e/aws-oidc_0.28.17-b67b92e_darwin_amd64.tar.gz"
      sha256 "408d4586fa4b9cc894d338a5e18d4233bf02bda88425dc6f2518a69c96d1121e"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.17-b67b92e/aws-oidc_0.28.17-b67b92e_linux_arm64.tar.gz"
      sha256 "8febd3dcf92a169db0d35a2fd6e99b4ad250dcc403b409b37434719c24f07ecf"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.17-b67b92e/aws-oidc_0.28.17-b67b92e_linux_amd64.tar.gz"
      sha256 "46500faed45f4b7e86012e919a5ce46bc04a13b8726e4773de7dde22f32477a4"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
