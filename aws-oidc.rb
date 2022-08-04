# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.24.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.24.5/aws-oidc_0.24.5_darwin_arm64.tar.gz"
      sha256 "b78af70853f3893382d54325db4cf694c1683b8cab24bb98ec8c1ccd0ec651aa"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.24.5/aws-oidc_0.24.5_darwin_amd64.tar.gz"
      sha256 "fbcd54a9339ad50965de487cec5adc7d04cff548b12c52472fe7826563f35c1e"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.24.5/aws-oidc_0.24.5_linux_arm64.tar.gz"
      sha256 "b573d357e8d8266c683a9a467e184ae2bddfcbb7c9a2910fd85324e19e67ebd0"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.24.5/aws-oidc_0.24.5_linux_amd64.tar.gz"
      sha256 "43189d039524c1d4043f4b85ad7d5e8dd925c5c1b4d97933d6faa139d271a76e"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
