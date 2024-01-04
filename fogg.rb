# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.91.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.91.9/fogg_0.91.9_darwin_arm64.tar.gz"
      sha256 "72db35454c598e308291d8252111d25f303d18965c2d42e5a043cce32ba53584"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.91.9/fogg_0.91.9_darwin_amd64.tar.gz"
      sha256 "97518e5160d0ef33340d9fb2deae5ce367442ef948cf15a368840aeebc7c6a37"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.91.9/fogg_0.91.9_linux_arm64.tar.gz"
      sha256 "85b65d6fc3876bcd0b4606344926aeb050330e00e931914dae6ecf45cdffc154"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.91.9/fogg_0.91.9_linux_amd64.tar.gz"
      sha256 "5ed4012112a2c641a75070e10a7fdefb428732c7d88e1526e5d27bd0b6a1277f"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
