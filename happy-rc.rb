# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HappyRc < Formula
  desc "A command line tool for happy path."
  homepage "https://github.com/chanzuckerberg/happy"
  version "0.29.2-79a41e8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2-79a41e8/happy_0.29.2-79a41e8_darwin_amd64.tar.gz"
      sha256 "d62bd0b09e058c7e8d0d50feb93c2a207deb8177debcef0dfb31a0f85b5fc35f"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2-79a41e8/happy_0.29.2-79a41e8_darwin_arm64.tar.gz"
      sha256 "bf56c36dd608f034adedd7505f1ca96f65f85de493a85df93ec85e4597120b2d"

      def install
        bin.install "happy-rc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2-79a41e8/happy_0.29.2-79a41e8_linux_arm64.tar.gz"
      sha256 "65acc10eb2668069441f8d7c801876ca8fa19a4a3e5475fb3af8632f04371a2c"

      def install
        bin.install "happy-rc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/happy/releases/download/v0.29.2-79a41e8/happy_0.29.2-79a41e8_linux_amd64.tar.gz"
      sha256 "ee350b958312bb57b227055d5a3b179fb02c3c9eafc0417d198570859e7d0f44"

      def install
        bin.install "happy-rc"
      end
    end
  end

  test do
    system "#{bin}/happy-rc"
  end
end
