# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fogg < Formula
  desc "Terraform without pain."
  homepage "https://github.com/chanzuckerberg/fogg"
  version "0.78.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.78.3/fogg_0.78.3_darwin_arm64.tar.gz"
      sha256 "08890e6a8fa87f92f423a925b42b13593c42b4734f6a65ff6444955fb1ff33b8"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.78.3/fogg_0.78.3_darwin_amd64.tar.gz"
      sha256 "c4942bc9f6fac3ecbb666e8373e90b2047aac0ce8fde301ef77c6e6e91b46991"

      def install
        bin.install "fogg"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.78.3/fogg_0.78.3_linux_amd64.tar.gz"
      sha256 "d1323562458c6c4fedadf7558ee05b1ccbcc364eea0af6c10d55363e1b586a05"

      def install
        bin.install "fogg"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/fogg/releases/download/v0.78.3/fogg_0.78.3_linux_arm64.tar.gz"
      sha256 "63bd868f6f3ee0b205534893dcb96ce11ad989a8202408ade73122b063ae4fce"

      def install
        bin.install "fogg"
      end
    end
  end

  test do
    system "#{bin}/fogg version"
  end
end
