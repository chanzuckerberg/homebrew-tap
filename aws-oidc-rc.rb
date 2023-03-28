# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.50-5473ad0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.50-5473ad0/aws-oidc_0.25.50-5473ad0_darwin_arm64.tar.gz"
      sha256 "01d1673daba05aa578d1981beb204510b032e10288ddd18139eeea04b0e16cf6"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.50-5473ad0/aws-oidc_0.25.50-5473ad0_darwin_amd64.tar.gz"
      sha256 "ad6f192ec07af32fec1e8654ad460f4380a7f176a85f4e7e2422d3415f78f7e4"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.50-5473ad0/aws-oidc_0.25.50-5473ad0_linux_amd64.tar.gz"
      sha256 "5d8e6852cf3963abac4a376d57d9d1c1a241dde14caa055b0d62e8bac09ec30d"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.50-5473ad0/aws-oidc_0.25.50-5473ad0_linux_arm64.tar.gz"
      sha256 "4687df9a6283856aae49e0322ffe4e3651478e4cfd931274e1dc5502511206be"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
