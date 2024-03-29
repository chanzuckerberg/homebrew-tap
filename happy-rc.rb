# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.31.3-a881b64"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.31.3-a881b64/happy_0.31.3-a881b64_darwin_arm64.tar.gz"
      sha256 "90953d78e2fdbc8545fe8184fae364982e4c2346412008b2156f300b6bb3ad88"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.31.3-a881b64/happy_0.31.3-a881b64_darwin_amd64.tar.gz"
      sha256 "b3b749a481b3b9db32df748c9d668f412564979c925f9736f417250577634706"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.31.3-a881b64/happy_0.31.3-a881b64_linux_arm64.tar.gz"
      sha256 "fbbb60692ae1c16db5763fb05178d7b6520218a1de41b78afbbfd6929613ad98"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.31.3-a881b64/happy_0.31.3-a881b64_linux_amd64.tar.gz"
      sha256 "63c1d1cab0d7527640b89518b34cae5579fa0715da5b7724fd595f0e76ceb49d"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
