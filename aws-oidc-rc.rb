# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidcRc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.56-2a6272b"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.56-2a6272b/aws-oidc_0.28.56-2a6272b_darwin_arm64.tar.gz"
      sha256 "69fdec379d4c6feefbdf5bdb8911cd39dc3fe1c43b15c370cce5615ceb35aeb4"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.56-2a6272b/aws-oidc_0.28.56-2a6272b_darwin_amd64.tar.gz"
      sha256 "35a15e16790f487e764ccb59f11671f6e14890b3e6214bcffd2a475ed05cbc0e"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.56-2a6272b/aws-oidc_0.28.56-2a6272b_linux_arm64.tar.gz"
      sha256 "ee98dc9e61c4986f8f58564faf03d8f225dc84bd5fbfa977f3c6f1d5f5df3d52"

      def install
        bin.install "aws-oidc-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.56-2a6272b/aws-oidc_0.28.56-2a6272b_linux_amd64.tar.gz"
      sha256 "46d8139e216019576e2225a07d7fa10656a8ff5f55eada6cfea017b3b586a051"

      def install
        bin.install "aws-oidc-rc"
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
