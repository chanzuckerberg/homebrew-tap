# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.2-7477b22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.2-7477b22/aws-oidc_0.28.2-7477b22_darwin_arm64.tar.gz"
      sha256 "9ecdedbdacec3859c4a06a6c47eeabda735e0771ceafd34d1450e87acd3baf73"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.2-7477b22/aws-oidc_0.28.2-7477b22_darwin_amd64.tar.gz"
      sha256 "90f63ec9a04f71b5b400aa73d3b38d59c184c6c227a7186eb16980cde24c1374"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.2-7477b22/aws-oidc_0.28.2-7477b22_linux_amd64.tar.gz"
      sha256 "83b5879900fa6e06fb20c796a5ded59ad10597c18ac4bb45110879a4a1932bb9"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.2-7477b22/aws-oidc_0.28.2-7477b22_linux_arm64.tar.gz"
      sha256 "fa44a7fa5b6ed17e220015db39bcb0efab23b63106b5d23553ab1f62b6db90c6"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
