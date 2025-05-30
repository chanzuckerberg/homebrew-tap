# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DeltaShare < Formula
  desc "The command line tool for the CZI Databricks Delta Share short-lived tokens."
  homepage "https://github.com/chanzuckerberg/delta-share"
  version "0.0.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/delta-share/releases/download/v0.0.13/delta-share_0.0.13_darwin_amd64.tar.gz"
      sha256 "bf133041f12c1c41bebd80d71e4d3a1cf815dc3511bc089c5f2f3a8ea41acc44"

      def install
        bin.install "delta-share"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/delta-share/releases/download/v0.0.13/delta-share_0.0.13_darwin_arm64.tar.gz"
      sha256 "f0a09dd703dbcd50e724539e6b72d9e31be8cd57c3f0189da42a0d653dd0cf44"

      def install
        bin.install "delta-share"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/delta-share/releases/download/v0.0.13/delta-share_0.0.13_linux_amd64.tar.gz"
        sha256 "85a7b4f875f750458aa3f7c6a12394261393824f41f15449180c8b6d9a6277a2"

        def install
          bin.install "delta-share"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chanzuckerberg/delta-share/releases/download/v0.0.13/delta-share_0.0.13_linux_arm64.tar.gz"
        sha256 "705c318ebaa212a666e2846fc7c2194c854d6ec5e2b423ff78ddf1f8bff5b148"

        def install
          bin.install "delta-share"
        end
      end
    end
  end

  test do
    system "#{bin}/delta-share version"
  end
end
