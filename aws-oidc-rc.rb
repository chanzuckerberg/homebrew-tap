# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.89-360fcb0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.89-360fcb0/aws-oidc_0.25.89-360fcb0_darwin_arm64.tar.gz"
      sha256 "c93c3be63c0a48d691920d7cc32577c7f2612ab683cedd180c51b72b1422c90a"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.89-360fcb0/aws-oidc_0.25.89-360fcb0_darwin_amd64.tar.gz"
      sha256 "70bc23b85bef40ea3ff1aa2a89fc67f11fc9ac6f7a9e1d08861bdebfb072dd21"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.89-360fcb0/aws-oidc_0.25.89-360fcb0_linux_amd64.tar.gz"
      sha256 "4aa61e145452447ac16bdcf944d9f9dca22364529399785985e27baad90088f4"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.89-360fcb0/aws-oidc_0.25.89-360fcb0_linux_arm64.tar.gz"
      sha256 "77ffdfc42884eeeeff0e0cbc1d9d5ad050c74eb4b25e4e2b9f864efb9ce4523f"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
