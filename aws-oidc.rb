# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AwsOidc < Formula
  desc "A command line utility tool to help generate AWS STS credentials from an OIDC application."
  homepage "https://github.com/chanzuckerberg/aws-oidc"
  version "0.28.74"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.74/aws-oidc_0.28.74_darwin_amd64.tar.gz"
      sha256 "577fa48053c3f54d6f00dc746215c58f04591a35f9567d232cc837803260e180"

      def install
        bin.install "aws-oidc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.74/aws-oidc_0.28.74_darwin_arm64.tar.gz"
      sha256 "c55960db3c880c58aa6179fe11ce05b2d7220b3d1a8b26b22dc38895aa9e3240"

      def install
        bin.install "aws-oidc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.74/aws-oidc_0.28.74_linux_amd64.tar.gz"
        sha256 "e219ebb651c0cefe2e93836ee4aabf7a738f2ed2ffa1bd22d4fbe32ac502e9ce"

        def install
          bin.install "aws-oidc"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/aws-oidc/releases/download/v0.28.74/aws-oidc_0.28.74_linux_arm64.tar.gz"
        sha256 "f7604851edc9b3c79f8ac12d2e98706a79c2a5b69f609317773cabf0017ebfdf"

        def install
          bin.install "aws-oidc"
        end
      end
    end
  end

  test do
    system "#{bin}/aws-oidc version"
  end
end
