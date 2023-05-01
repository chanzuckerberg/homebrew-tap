# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.25.63-3ba839f"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.63-3ba839f/aws-oidc_0.25.63-3ba839f_darwin_arm64.tar.gz"
      sha256 "8a90616e06480cd13fd275214c757cdac9e759006bc510c4a78d53e0f68b26f9"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.63-3ba839f/aws-oidc_0.25.63-3ba839f_darwin_amd64.tar.gz"
      sha256 "0b2cf0a5cf2ce35eab68aa8acc02f52bd4b0cb19b73936557a1950c7fa0a8511"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.63-3ba839f/aws-oidc_0.25.63-3ba839f_linux_amd64.tar.gz"
      sha256 "728ebcf298d7bd437d4fcb2263f328cadfa435e2cc854a74a603728870bb6a2d"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.25.63-3ba839f/aws-oidc_0.25.63-3ba839f_linux_arm64.tar.gz"
      sha256 "bb813234faec92466b17718d479075363535de2b97dbc0002ace5dc8689a68ab"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
